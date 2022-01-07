
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int pci_dev; } ;


 int pci_free_irq_vectors (int ) ;

void genwqe_reset_interrupt_capability(struct genwqe_dev *cd)
{
 pci_free_irq_vectors(cd->pci_dev);
}
