
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct aq_nic_s {TYPE_1__* ndev; TYPE_2__* aq_hw; } ;
struct TYPE_5__ {int mmio; } ;
struct TYPE_4__ {scalar_t__ reg_state; } ;


 scalar_t__ NETREG_REGISTERED ;
 int aq_clear_rxnfc_all_rules (struct aq_nic_s*) ;
 int aq_nic_free_vectors (struct aq_nic_s*) ;
 int aq_pci_free_irq_vectors (struct aq_nic_s*) ;
 int free_netdev (TYPE_1__*) ;
 int iounmap (int ) ;
 int kfree (TYPE_2__*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct aq_nic_s* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (TYPE_1__*) ;

__attribute__((used)) static void aq_pci_remove(struct pci_dev *pdev)
{
 struct aq_nic_s *self = pci_get_drvdata(pdev);

 if (self->ndev) {
  aq_clear_rxnfc_all_rules(self);
  if (self->ndev->reg_state == NETREG_REGISTERED)
   unregister_netdev(self->ndev);
  aq_nic_free_vectors(self);
  aq_pci_free_irq_vectors(self);
  iounmap(self->aq_hw->mmio);
  kfree(self->aq_hw);
  pci_release_regions(pdev);
  free_netdev(self->ndev);
 }

 pci_disable_device(pdev);
}
