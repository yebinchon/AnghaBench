
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int * msix_entries; int pdev; } ;


 int kfree (int *) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void ixgbevf_reset_interrupt_capability(struct ixgbevf_adapter *adapter)
{
 if (!adapter->msix_entries)
  return;

 pci_disable_msix(adapter->pdev);
 kfree(adapter->msix_entries);
 adapter->msix_entries = ((void*)0);
}
