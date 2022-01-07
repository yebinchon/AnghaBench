
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_nic_s {int pdev; } ;


 int pci_free_irq_vectors (int ) ;

__attribute__((used)) static void aq_pci_free_irq_vectors(struct aq_nic_s *self)
{
 pci_free_irq_vectors(self->pdev);
}
