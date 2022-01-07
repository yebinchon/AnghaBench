
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ func; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ bus; TYPE_2__ mac; } ;
struct ixgbe_adapter {scalar_t__ eeprom_cap; struct ixgbe_hw hw; } ;


 scalar_t__ IXGBE_DEVICE_CAPS_WOL_MASK ;
 scalar_t__ IXGBE_DEVICE_CAPS_WOL_PORT0 ;
 scalar_t__ IXGBE_DEVICE_CAPS_WOL_PORT0_1 ;







 scalar_t__ IXGBE_SUBDEV_ID_82599_KX4_KR_MEZZ ;
 scalar_t__ ixgbe_mac_82598EB ;
 scalar_t__ ixgbe_mac_X540 ;

bool ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
    u16 subdevice_id)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u16 wol_cap = adapter->eeprom_cap & IXGBE_DEVICE_CAPS_WOL_MASK;


 if (hw->mac.type == ixgbe_mac_82598EB)
  return 0;


 if (hw->mac.type >= ixgbe_mac_X540) {
  if ((wol_cap == IXGBE_DEVICE_CAPS_WOL_PORT0_1) ||
      ((wol_cap == IXGBE_DEVICE_CAPS_WOL_PORT0) &&
       (hw->bus.func == 0)))
   return 1;
 }


 switch (device_id) {
 case 140:

  switch (subdevice_id) {
  case 138:
  case 136:
  case 129:
  case 132:

   if (hw->bus.func != 0)
    break;

  case 128:
  case 134:
  case 135:
  case 137:
  case 133:
  case 131:
  case 130:
   return 1;
  }
  break;
 case 143:

  switch (subdevice_id) {
  case 139:
   return 1;
  }
  break;
 case 142:

  if (subdevice_id != IXGBE_SUBDEV_ID_82599_KX4_KR_MEZZ)
   return 1;
  break;
 case 141:
  return 1;
 default:
  break;
 }

 return 0;
}
