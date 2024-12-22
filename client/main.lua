local ESX = exports["es_extended"]:getSharedObject()

RegisterCommand('extras', function()
    local playerPed = PlayerPedId()
    
    if not IsPedInAnyVehicle(playerPed, false) then
        ESX.ShowNotification('You must be in a vehicle to use this command.')
        return
    end

    local vehicle = GetVehiclePedIsIn(playerPed, false)
    if not vehicle then return end

    for i = 0, 14 do
        if DoesExtraExist(vehicle, i) then
            SetVehicleExtra(vehicle, i, false) 
        end
    end
    
    ESX.ShowNotification('Vehicle extras have been equipped.')
end) 