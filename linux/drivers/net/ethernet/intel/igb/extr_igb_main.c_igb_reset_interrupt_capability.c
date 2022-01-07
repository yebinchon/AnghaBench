
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int num_q_vectors; int flags; int pdev; } ;


 int IGB_FLAG_HAS_MSI ;
 int IGB_FLAG_HAS_MSIX ;
 int igb_reset_q_vector (struct igb_adapter*,int) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void igb_reset_interrupt_capability(struct igb_adapter *adapter)
{
 int v_idx = adapter->num_q_vectors;

 if (adapter->flags & IGB_FLAG_HAS_MSIX)
  pci_disable_msix(adapter->pdev);
 else if (adapter->flags & IGB_FLAG_HAS_MSI)
  pci_disable_msi(adapter->pdev);

 while (v_idx--)
  igb_reset_q_vector(adapter, v_idx);
}
