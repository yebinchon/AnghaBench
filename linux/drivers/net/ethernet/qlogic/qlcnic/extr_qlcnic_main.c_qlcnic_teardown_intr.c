
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int flags; TYPE_1__* ahw; int * msix_entries; int pdev; } ;
struct TYPE_2__ {int * intr_tbl; } ;


 int QLCNIC_MSIX_ENABLED ;
 int QLCNIC_MSI_ENABLED ;
 int kfree (int *) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;
 int vfree (int *) ;

void qlcnic_teardown_intr(struct qlcnic_adapter *adapter)
{
 if (adapter->flags & QLCNIC_MSIX_ENABLED)
  pci_disable_msix(adapter->pdev);
 if (adapter->flags & QLCNIC_MSI_ENABLED)
  pci_disable_msi(adapter->pdev);

 kfree(adapter->msix_entries);
 adapter->msix_entries = ((void*)0);

 if (adapter->ahw->intr_tbl) {
  vfree(adapter->ahw->intr_tbl);
  adapter->ahw->intr_tbl = ((void*)0);
 }
}
