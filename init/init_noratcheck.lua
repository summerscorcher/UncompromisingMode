local env = env
GLOBAL.setfenv(1, GLOBAL)
-----------------------------------------------------------------
TUNING.DSTU.NORATCHECK =--defining it here for simplicity's sake.
{
    "powcake",
	"powcake_spice_chili",
	"powcake_spice_garlic",
	"powcake_spice_salt",
	"powcake_spice_sugar",
    "moonstorm_spark",
    "charcoal",
    "heatrock",
    "soil_amender_fermented",
    "soil_amender",
    "lantern",
	"pumpkin_lantern",
	"watermelon_lantern",
	"moonglass_charged",
	"trinket_4",
	"trinket_13",
	"moonglass_geode",
	"aip_leaf_note",
	"ash",
	"bernie_inactive",
	"blue_mushed_room",
	"green_mushed_room",
	"red_mushed_room",
	"ancientfruit_gem", 	
}

for k, v in ipairs(TUNING.DSTU.NORATCHECK) do
    env.AddPrefabPostInit(v, function(inst)
		if inst ~= nil then
			inst:AddTag("NORATCHECK")
		end

    end)
end


--idfc i'm putting this here
env.AddPrefabPostInit("friendlyfruitfly", function(inst)
    inst:AddTag("NOBLOCK")
end)