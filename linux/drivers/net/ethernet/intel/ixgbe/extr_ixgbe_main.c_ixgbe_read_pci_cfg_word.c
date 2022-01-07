
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ixgbe_hw {int hw_addr; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int pdev; } ;


 scalar_t__ IXGBE_FAILED_READ_CFG_WORD ;
 scalar_t__ ixgbe_check_cfg_remove (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_removed (int ) ;
 int pci_read_config_word (int ,int ,scalar_t__*) ;

u16 ixgbe_read_pci_cfg_word(struct ixgbe_hw *hw, u32 reg)
{
 struct ixgbe_adapter *adapter = hw->back;
 u16 value;

 if (ixgbe_removed(hw->hw_addr))
  return IXGBE_FAILED_READ_CFG_WORD;
 pci_read_config_word(adapter->pdev, reg, &value);
 if (value == IXGBE_FAILED_READ_CFG_WORD &&
     ixgbe_check_cfg_remove(hw, adapter->pdev))
  return IXGBE_FAILED_READ_CFG_WORD;
 return value;
}
