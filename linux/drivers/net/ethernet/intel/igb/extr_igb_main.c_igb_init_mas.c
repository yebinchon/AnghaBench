
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int func; } ;
struct TYPE_4__ {int (* read ) (struct e1000_hw*,int ,int,int*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ bus; TYPE_2__ nvm; } ;
struct igb_adapter {int netdev; int flags; struct e1000_hw hw; } ;






 int IGB_FLAG_MAS_ENABLE ;
 int IGB_MAS_ENABLE_0 ;
 int IGB_MAS_ENABLE_1 ;
 int IGB_MAS_ENABLE_2 ;
 int IGB_MAS_ENABLE_3 ;
 int NVM_COMPAT ;
 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*,int) ;
 int stub1 (struct e1000_hw*,int ,int,int*) ;

__attribute__((used)) static void igb_init_mas(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 eeprom_data;

 hw->nvm.ops.read(hw, NVM_COMPAT, 1, &eeprom_data);
 switch (hw->bus.func) {
 case 131:
  if (eeprom_data & IGB_MAS_ENABLE_0) {
   adapter->flags |= IGB_FLAG_MAS_ENABLE;
   netdev_info(adapter->netdev,
    "MAS: Enabling Media Autosense for port %d\n",
    hw->bus.func);
  }
  break;
 case 130:
  if (eeprom_data & IGB_MAS_ENABLE_1) {
   adapter->flags |= IGB_FLAG_MAS_ENABLE;
   netdev_info(adapter->netdev,
    "MAS: Enabling Media Autosense for port %d\n",
    hw->bus.func);
  }
  break;
 case 129:
  if (eeprom_data & IGB_MAS_ENABLE_2) {
   adapter->flags |= IGB_FLAG_MAS_ENABLE;
   netdev_info(adapter->netdev,
    "MAS: Enabling Media Autosense for port %d\n",
    hw->bus.func);
  }
  break;
 case 128:
  if (eeprom_data & IGB_MAS_ENABLE_3) {
   adapter->flags |= IGB_FLAG_MAS_ENABLE;
   netdev_info(adapter->netdev,
    "MAS: Enabling Media Autosense for port %d\n",
    hw->bus.func);
  }
  break;
 default:

  netdev_err(adapter->netdev,
   "MAS: Invalid port configuration, returning\n");
  break;
 }
}
