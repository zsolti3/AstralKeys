KEYSTONE_ID = 138019
BFA_KEYSTONE_ID = 158923

AstralEvents:Register('CHALLENGE_MODE_KEYSTONE_RECEPTABLE_OPEN', function()
	if AstralKeysSettings.general.auto_inserting_keystone.isEnabled then
		 for bag = 0, NUM_BAG_SLOTS do
				for slot = 0, GetContainerNumSlots(bag) do
					if(GetContainerItemID(bag, slot) == KEYSTONE_ID or GetContainerItemID(bag, slot) == BFA_KEYSTONE_ID) then                    
						PickupContainerItem(bag, slot)
						C_ChallengeMode.SlotKeystone()
						return
					end
				end   
			end
	end
end, 'challengeModeKeystoneReceptableOpen')
