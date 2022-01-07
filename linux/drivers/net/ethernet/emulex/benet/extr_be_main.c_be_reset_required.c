
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int pdev; } ;


 scalar_t__ be_error_recovering (struct be_adapter*) ;
 scalar_t__ pci_num_vf (int ) ;

__attribute__((used)) static bool be_reset_required(struct be_adapter *adapter)
{
 if (be_error_recovering(adapter))
  return 1;
 else
  return pci_num_vf(adapter->pdev) == 0;
}
