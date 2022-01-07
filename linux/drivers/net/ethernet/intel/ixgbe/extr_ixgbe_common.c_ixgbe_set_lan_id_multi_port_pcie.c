
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_bus_info {int func; int lan_id; int instance_id; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_2__ eeprom; struct ixgbe_bus_info bus; } ;


 scalar_t__ IXGBE_DEV_ID_X550EM_A_SFP ;
 int IXGBE_EEPROM_CTRL_4 ;
 int IXGBE_EE_CTRL_4_INST_ID ;
 int IXGBE_EE_CTRL_4_INST_ID_SHIFT ;
 int IXGBE_FACTPS (struct ixgbe_hw*) ;
 int IXGBE_FACTPS_LFS ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_STATUS ;
 int IXGBE_STATUS_LAN_ID ;
 int IXGBE_STATUS_LAN_ID_SHIFT ;
 int stub1 (struct ixgbe_hw*,int ,int*) ;

void ixgbe_set_lan_id_multi_port_pcie(struct ixgbe_hw *hw)
{
 struct ixgbe_bus_info *bus = &hw->bus;
 u16 ee_ctrl_4;
 u32 reg;

 reg = IXGBE_READ_REG(hw, IXGBE_STATUS);
 bus->func = (reg & IXGBE_STATUS_LAN_ID) >> IXGBE_STATUS_LAN_ID_SHIFT;
 bus->lan_id = bus->func;


 reg = IXGBE_READ_REG(hw, IXGBE_FACTPS(hw));
 if (reg & IXGBE_FACTPS_LFS)
  bus->func ^= 0x1;


 if (hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP) {
  hw->eeprom.ops.read(hw, IXGBE_EEPROM_CTRL_4, &ee_ctrl_4);
  bus->instance_id = (ee_ctrl_4 & IXGBE_EE_CTRL_4_INST_ID) >>
       IXGBE_EE_CTRL_4_INST_ID_SHIFT;
 }
}
