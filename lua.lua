local AbilityTokens = {1442700745,1472256444}
function GoInvis()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0,-1,0))
task.wait()
local Root = game.Players.LocalPlayer.Character.LowerTorso.Root
local Clone = Root:Clone()
Root:Destroy()Clone.Parent = game.Players.LocalPlayer.Character.LowerTorso
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-114.044, 2.30161, 271.535))
end
function CollectTokens(enable)
while task.wait(.1) and enable do
if enable == true then
for _,v in pairs(game:GetService("Workspace").Collectibles:GetChildren()) do
decal = v:FindFirstChildOfClass("Decal")
for i,z in next, AbilityTokens do
if decal.Texture == "rbxassetid://"..z then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position.X,v.Position.Y,v.Position.Z)
break
                    end
                end
            end
        end
    end
end
function Tp(p1,p2,p3,speed,double)
t = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(speed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(Vector3.new(p1,p2,p3)+Vector3.new(0,double,0))})
t:Play()
end
