
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_wolinfo {int supported; } ;
struct e1000_hw {int device_id; } ;
struct e1000_adapter {int eeprom_wol; int quad_port_a; struct e1000_hw hw; } ;
 int E1000_STATUS_FUNC_1 ;
 int STATUS ;
 int er32 (int ) ;

__attribute__((used)) static int e1000_wol_exclusion(struct e1000_adapter *adapter,
          struct ethtool_wolinfo *wol)
{
 struct e1000_hw *hw = &adapter->hw;
 int retval = 1;

 switch (hw->device_id) {
 case 139:
 case 137:
 case 138:
 case 136:
 case 132:
 case 134:
 case 135:
 case 129:
 case 130:

  wol->supported = 0;
  break;
 case 133:
 case 131:

  if (er32(STATUS) & E1000_STATUS_FUNC_1) {
   wol->supported = 0;
   break;
  }

  retval = 0;
  break;
 case 128:

  if (!adapter->quad_port_a) {
   wol->supported = 0;
   break;
  }

  retval = 0;
  break;
 default:




  if (er32(STATUS) & E1000_STATUS_FUNC_1 &&
      !adapter->eeprom_wol) {
   wol->supported = 0;
   break;
  }

  retval = 0;
 }

 return retval;
}
