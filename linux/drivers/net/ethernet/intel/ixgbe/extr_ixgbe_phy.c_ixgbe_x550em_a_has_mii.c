
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ixgbe_hw {struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {struct pci_dev* pdev; } ;


 int PCI_DEVFN (int,int ) ;
 struct pci_dev* ixgbe_get_first_secondary_devfn (int ) ;

__attribute__((used)) static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
{
 struct ixgbe_adapter *adapter = hw->back;
 struct pci_dev *pdev = adapter->pdev;
 struct pci_dev *func0_pdev;







 func0_pdev = ixgbe_get_first_secondary_devfn(PCI_DEVFN(0x16, 0));
 if (func0_pdev) {
  if (func0_pdev == pdev)
   return 1;
  else
   return 0;
 }
 func0_pdev = ixgbe_get_first_secondary_devfn(PCI_DEVFN(0x17, 0));
 if (func0_pdev == pdev)
  return 1;

 return 0;
}
