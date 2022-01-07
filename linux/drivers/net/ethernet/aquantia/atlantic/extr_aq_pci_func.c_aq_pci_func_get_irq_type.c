
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_nic_s {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ msi_enabled; scalar_t__ msix_enabled; } ;


 unsigned int AQ_HW_IRQ_LEGACY ;
 unsigned int AQ_HW_IRQ_MSI ;
 unsigned int AQ_HW_IRQ_MSIX ;

unsigned int aq_pci_func_get_irq_type(struct aq_nic_s *self)
{
 if (self->pdev->msix_enabled)
  return AQ_HW_IRQ_MSIX;
 if (self->pdev->msi_enabled)
  return AQ_HW_IRQ_MSI;
 return AQ_HW_IRQ_LEGACY;
}
