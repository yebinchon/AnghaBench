
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int hw_addr; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int pdev; } ;


 scalar_t__ ixgbe_removed (int ) ;
 int pci_write_config_word (int ,int ,int ) ;

void ixgbe_write_pci_cfg_word(struct ixgbe_hw *hw, u32 reg, u16 value)
{
 struct ixgbe_adapter *adapter = hw->back;

 if (ixgbe_removed(hw->hw_addr))
  return;
 pci_write_config_word(adapter->pdev, reg, value);
}
