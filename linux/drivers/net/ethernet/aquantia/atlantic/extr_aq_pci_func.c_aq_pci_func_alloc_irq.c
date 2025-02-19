
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ msix_enabled; scalar_t__ msi_enabled; } ;
struct aq_nic_s {int msix_entry_mask; struct pci_dev* pdev; } ;
typedef int irq_handler_t ;
typedef int cpumask_t ;


 int IRQF_SHARED ;
 int aq_vec_isr_legacy ;
 int irq_set_affinity_hint (int ,int *) ;
 int pci_irq_vector (struct pci_dev*,unsigned int) ;
 int request_irq (int ,int ,int ,char*,void*) ;

int aq_pci_func_alloc_irq(struct aq_nic_s *self, unsigned int i,
     char *name, irq_handler_t irq_handler,
     void *irq_arg, cpumask_t *affinity_mask)
{
 struct pci_dev *pdev = self->pdev;
 int err;

 if (pdev->msix_enabled || pdev->msi_enabled)
  err = request_irq(pci_irq_vector(pdev, i), irq_handler, 0,
      name, irq_arg);
 else
  err = request_irq(pci_irq_vector(pdev, i), aq_vec_isr_legacy,
      IRQF_SHARED, name, irq_arg);

 if (err >= 0) {
  self->msix_entry_mask |= (1 << i);

  if (pdev->msix_enabled && affinity_mask)
   irq_set_affinity_hint(pci_irq_vector(pdev, i),
           affinity_mask);
 }

 return err;
}
