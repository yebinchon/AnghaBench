
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int flags; int pdev; int * irq_pile; int * msix_entries; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_FLAG_MSI_ENABLED ;
 int kfree (int *) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void i40e_reset_interrupt_capability(struct i40e_pf *pf)
{

 if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
  pci_disable_msix(pf->pdev);
  kfree(pf->msix_entries);
  pf->msix_entries = ((void*)0);
  kfree(pf->irq_pile);
  pf->irq_pile = ((void*)0);
 } else if (pf->flags & I40E_FLAG_MSI_ENABLED) {
  pci_disable_msi(pf->pdev);
 }
 pf->flags &= ~(I40E_FLAG_MSIX_ENABLED | I40E_FLAG_MSI_ENABLED);
}
