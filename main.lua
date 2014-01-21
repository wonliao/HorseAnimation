
display.setStatusBar(display.HiddenStatusBar)

local background = display.newImage("background.png") 
background:setReferencePoint(display.TopLeftReferencePoint)

local moon = display.newImage("moon.png", 22, 19) 

local mountain_big = display.newImage("mountain_big.png", 132-240, 92) 
local mountain_big2 = display.newImage("mountain_big.png", 132-720, 92) 
local mountain_sma = display.newImage("mountain_small.png", 84, 111)
local mountain_sma2 = display.newImage("mountain_small.png", 84 - 480, 111)

local tree_s = display.newImage("tree_s.png", 129-30, 151) 
local tree_s2 = display.newImage("tree_s.png", 270 + 10,151)
local tree_l = display.newImage("tree_l.png", 145, 131) 

local tree_s3 = display.newImage("tree_s.png", 129-30 - 320, 151) 
local tree_s4 = display.newImage("tree_s.png", 270 + 10 - 320,151)
local tree_l2 = display.newImage("tree_l.png", 145 - 320, 131) 

local tree_s5 = display.newImage("tree_s.png", 129 - 30 - 640, 151) 
local tree_s6 = display.newImage("tree_s.png", 270 + 10 - 640,151)
local tree_l3 = display.newImage("tree_l.png", 145 - 640, 131) 

local fog = display.newImage("Fog.png", 0, 214) 
local fog2 = display.newImage("Fog.png",-480,214)

background.x = 0
background.y = 0



-- The following demonstrates using the new image sheet data format 
-- where uma_old.lua has been migrated to the new format (uma.lua)
local options =
{
	frames = require("uma").frames,
}

-- The new sprite API
local umaSheet = graphics.newImageSheet( "uma.png", options )
local spriteOptions = { name="uma", start=1, count=8, time=1000 }
local spriteInstance = display.newSprite( umaSheet, spriteOptions )

spriteInstance:setReferencePoint(display.BottomRightReferencePoint)
spriteInstance.x = 480
spriteInstance.y = 320

local tree_l_sugi = display.newImage("tree_l_sugi.png", 23, 0) 
local tree_l_take = display.newImage("tree_l_take.png", 151, 0) 

local rakkan = display.newImage("rakkan.png", 19, 217) 
local rakkann = display.newImage("rakkann.png", 450, 11) 

local wallOutSide = display.newRect(480,0,200,320)
wallOutSide:setFillColor(0,0,0)

local wallOutSide2 = display.newRect(-200,0,200,320)
wallOutSide2:setFillColor(0,0,0)

local tPrevious = system.getTimer()

local function move(event)
	
	local tDelta = event.time - tPrevious
	tPrevious = event.time

	local xOffset = ( 0.2 * tDelta )
	
	moon.x = moon.x + xOffset*0.05
	
	fog.x = fog.x + xOffset
	fog2.x = fog2.x + xOffset
	
	mountain_big.x = mountain_big.x + xOffset*0.5
	mountain_big2.x = mountain_big2.x + xOffset*0.5
	mountain_sma.x = mountain_sma.x + xOffset*0.5
	mountain_sma2.x = mountain_sma2.x + xOffset*0.5

	
	tree_s.x = tree_s.x + xOffset
	tree_s2.x = tree_s2.x + xOffset
	tree_l.x = tree_l.x + xOffset
	
	tree_s3.x = tree_s3.x + xOffset
	tree_s4.x = tree_s4.x + xOffset
	tree_l2.x = tree_l2.x + xOffset
	
	tree_s5.x = tree_s5.x + xOffset
	tree_s6.x = tree_s6.x + xOffset
	tree_l3.x = tree_l3.x + xOffset
	
	
	tree_l_sugi.x = tree_l_sugi.x + xOffset * 1.5
	tree_l_take.x = tree_l_take.x + xOffset * 1.5
	
	if moon.x > 480 + moon.width / 2 then
		moon:translate ( -480*2 , 0)
	end
	if fog.x > 480 + fog.width / 2 then
		fog:translate( -480 * 2, 0)
	end
	
	if fog2.x > 480 + fog2.width / 2 then
		fog2:translate( -480 * 2, 0)
	end
	
	
	if mountain_big.x > 480 + mountain_big.width / 2 then
		mountain_big:translate(-480*2 , 0)
	end
	if mountain_big2.x > 480 + mountain_big2.width / 2 then
		mountain_big2:translate(-480*2 , 0)
	end
	if mountain_sma.x > 480 + mountain_sma.width / 2 then
		mountain_sma:translate(-480*2,0)
	end
	if mountain_sma2.x > 480 + mountain_sma2.width / 2 then
		mountain_sma2:translate(-480*2,0)
	end
	
	if tree_s.x > 480 + tree_s.width / 2 then
		tree_s:translate(-480*2 , 0)
	end
	if tree_s2.x > 480 + tree_s2.width / 2 then
		tree_s2:translate(-480*2 , 0)
	end
	if tree_l.x > 480 + tree_l.width / 2 then
		tree_l:translate(-480*2 , 0)
	end
	
	if tree_s3.x > 480 + tree_s3.width / 2 then
		tree_s3:translate(-480*2 , 0)
	end
	if tree_s4.x > 480 + tree_s4.width / 2 then
		tree_s4:translate(-480*2 , 0)
	end
	if tree_l2.x > 480 + tree_l2.width / 2 then
		tree_l2:translate(-480*2 , 0)
	end
	
	if tree_s5.x > 480 + tree_s5.width / 2 then
		tree_s5:translate(-480*2 , 0)
	end
	if tree_s6.x > 480 + tree_s6.width / 2 then
		tree_s6:translate(-480*2 , 0)
	end
	if tree_l3.x > 480 + tree_l3.width / 2 then
		tree_l3:translate(-480*2 , 0)
	end
	
	if tree_l_sugi.x > 480 + tree_l_sugi.width / 2 then
		tree_l_sugi:translate(-480*4,0)
	end
	
	if tree_l_take.x > 480 + tree_l_take.width / 2 then
		tree_l_take:translate(-480*5,0)
	end
	
end

spriteInstance:play()

Runtime:addEventListener("enterFrame",move)



require("bow")
require("target")

local bowHeight = 70

--birad = display.newImageRect("c1.png", 80, 80)
--birad.x = 100
--birad.y = 70
--timer.performWithDelay(2000, function()
--    transition.to( birad, {time=1000, y=100} )
--    timer.performWithDelay(1000, function() transition.to( birad, {time=1000, y=70} ) end, 1)
--end, 0)

local sprite = require( "sprite" )
local pteroSheet = sprite.newSpriteSheet( "ptero_fly_anim.png", 252, 120 )
local pteroSet = sprite.newSpriteSet( pteroSheet, 1, 6 )
sprite.add( pteroSet, "ptero", 1, 6, 300, -2 )
local ptero = sprite.newSprite( pteroSet )
ptero:setReferencePoint( display.CenterReferencePoint )
ptero.xScale = 0.6
ptero.yScale = 0.6
ptero.x = 100
ptero.y = 70
timer.performWithDelay(2000, function()
    transition.to( ptero, {time=1000, y=100} )
    timer.performWithDelay(1000, function() transition.to( ptero, {time=1000, y=70} ) end, 1)
end, 0)



ptero:prepare( "ptero" )
ptero:play()



myBow = bow:new(320, 150, bowHeight, 25, 20)


myBow.addTarget(ptero)



-- implement the collision event
myBow.onCollision = function(ev)
	local hits = #ev
	if hits > 0 then
		-- reload the bow
		myBow.reload()
		
		-- draw the arrow at the target
		local arrow = display.newImage("Images/arrow.png", 0, 0)
		-- retrieving event's data
		arrow.x, arrow.y = ev[1].x, ev[1].y
		arrow.rotation = ev[1].angle
		
		-- set the scale
		arrow.xScale = bowHeight / arrow.height / 2
		arrow.yScale = bowHeight / arrow.height / 2
	end
end


local rider = display.newImageRect("rider.png", 90, 150)
rider.x = 380
rider.y = 200
timer.performWithDelay(900, function()
    transition.to( rider, {time=450, y=210} )
    timer.performWithDelay(450, function() transition.to( rider, {time=450, y=200} ) end, 1)
end, 0)





