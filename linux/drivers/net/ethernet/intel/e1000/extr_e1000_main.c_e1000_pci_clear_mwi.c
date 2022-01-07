
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {struct e1000_adapter* back; } ;
struct e1000_adapter {int pdev; } ;


 int pci_clear_mwi (int ) ;

void e1000_pci_clear_mwi(struct e1000_hw *hw)
{
 struct e1000_adapter *adapter = hw->back;

 pci_clear_mwi(adapter->pdev);
}
