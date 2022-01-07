
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ msix_enabled; } ;
struct TYPE_2__ {unsigned int link_irq_vec; } ;
struct aq_nic_s {unsigned int msix_entry_mask; void** aq_vec; TYPE_1__ aq_nic_cfg; struct pci_dev* pdev; } ;


 unsigned int AQ_CFG_VECS_MAX ;
 int free_irq (int ,void*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int pci_irq_vector (struct pci_dev*,unsigned int) ;

void aq_pci_func_free_irqs(struct aq_nic_s *self)
{
 struct pci_dev *pdev = self->pdev;
 unsigned int i;
 void *irq_data;

 for (i = 32U; i--;) {
  if (!((1U << i) & self->msix_entry_mask))
   continue;
  if (self->aq_nic_cfg.link_irq_vec &&
      i == self->aq_nic_cfg.link_irq_vec)
   irq_data = self;
  else if (i < AQ_CFG_VECS_MAX)
   irq_data = self->aq_vec[i];
  else
   continue;

  if (pdev->msix_enabled)
   irq_set_affinity_hint(pci_irq_vector(pdev, i), ((void*)0));
  free_irq(pci_irq_vector(pdev, i), irq_data);
  self->msix_entry_mask &= ~(1U << i);
 }
}
