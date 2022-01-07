
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,scalar_t__,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_bus_info {scalar_t__ func; } ;
struct ixgbe_hw {TYPE_2__ eeprom; struct ixgbe_bus_info bus; } ;


 scalar_t__ IXGBE_PCIE_CTRL2 ;
 int IXGBE_PCIE_CTRL2_DISABLE_SELECT ;
 int IXGBE_PCIE_CTRL2_DUMMY_ENABLE ;
 int IXGBE_PCIE_CTRL2_LAN_DISABLE ;
 scalar_t__ IXGBE_PCIE_GENERAL_PTR ;
 int ixgbe_set_lan_id_multi_port_pcie (struct ixgbe_hw*) ;
 int stub1 (struct ixgbe_hw*,scalar_t__,int*) ;
 int stub2 (struct ixgbe_hw*,scalar_t__,int*) ;

__attribute__((used)) static void ixgbe_set_lan_id_multi_port_pcie_82598(struct ixgbe_hw *hw)
{
 struct ixgbe_bus_info *bus = &hw->bus;
 u16 pci_gen = 0;
 u16 pci_ctrl2 = 0;

 ixgbe_set_lan_id_multi_port_pcie(hw);


 hw->eeprom.ops.read(hw, IXGBE_PCIE_GENERAL_PTR, &pci_gen);
 if ((pci_gen != 0) && (pci_gen != 0xFFFF)) {

  hw->eeprom.ops.read(hw, pci_gen + IXGBE_PCIE_CTRL2, &pci_ctrl2);


  if ((pci_ctrl2 & IXGBE_PCIE_CTRL2_LAN_DISABLE) &&
      !(pci_ctrl2 & IXGBE_PCIE_CTRL2_DISABLE_SELECT) &&
      !(pci_ctrl2 & IXGBE_PCIE_CTRL2_DUMMY_ENABLE)) {

   bus->func = 0;
  }
 }
}
