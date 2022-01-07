
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct ixgbe_hw {int dummy; } ;


 scalar_t__ IXGBE_FAILED_READ_CFG_WORD ;
 int PCI_VENDOR_ID ;
 int ixgbe_remove_adapter (struct ixgbe_hw*) ;
 int pci_read_config_word (struct pci_dev*,int ,scalar_t__*) ;

__attribute__((used)) static bool ixgbe_check_cfg_remove(struct ixgbe_hw *hw, struct pci_dev *pdev)
{
 u16 value;

 pci_read_config_word(pdev, PCI_VENDOR_ID, &value);
 if (value == IXGBE_FAILED_READ_CFG_WORD) {
  ixgbe_remove_adapter(hw);
  return 1;
 }
 return 0;
}
