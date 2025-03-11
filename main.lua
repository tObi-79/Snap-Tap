-- Snap Tap Emulation in Love2D
local keys = { A = false, D = false }
local lastPressed = nil

function love.keypressed(key)
    if key == "a" or key == "d" then
        keys[key:upper()] = true
        lastPressed = key
    end
end

function love.keyreleased(key)
    if key == "a" or key == "d" then
        keys[key:upper()] = false
        if lastPressed == key then
            lastPressed = nil
        end
    end
end

function love.update(dt)
    if keys["A"] and keys["D"] then
        if lastPressed == "a" then
            print("Moving Left (Snap Tap)")
        else
            print("Moving Right (Snap Tap)")
        end
    elseif keys["A"] then
        print("Moving Left")
    elseif keys["D"] then
        print("Moving Right")
    end
end
