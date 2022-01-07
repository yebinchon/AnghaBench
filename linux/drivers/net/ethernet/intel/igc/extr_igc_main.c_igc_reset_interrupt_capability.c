
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int num_q_vectors; int flags; int pdev; int * msix_entries; } ;


 int IGC_FLAG_HAS_MSI ;
 int igc_reset_q_vector (struct igc_adapter*,int) ;
 int kfree (int *) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void igc_reset_interrupt_capability(struct igc_adapter *adapter)
{
 int v_idx = adapter->num_q_vectors;

 if (adapter->msix_entries) {
  pci_disable_msix(adapter->pdev);
  kfree(adapter->msix_entries);
  adapter->msix_entries = ((void*)0);
 } else if (adapter->flags & IGC_FLAG_HAS_MSI) {
  pci_disable_msi(adapter->pdev);
 }

 while (v_idx--)
  igc_reset_q_vector(adapter, v_idx);
}
