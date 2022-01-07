
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {struct e1000_adapter* back; } ;
struct e1000_adapter {int pdev; } ;


 int e_err (int ,char*) ;
 int pci_set_mwi (int ) ;
 int probe ;

void e1000_pci_set_mwi(struct e1000_hw *hw)
{
 struct e1000_adapter *adapter = hw->back;
 int ret_val = pci_set_mwi(adapter->pdev);

 if (ret_val)
  e_err(probe, "Error in setting MWI\n");
}
