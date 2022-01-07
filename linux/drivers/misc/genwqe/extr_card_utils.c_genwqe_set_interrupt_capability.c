
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int pci_dev; } ;


 int PCI_IRQ_MSI ;
 int pci_alloc_irq_vectors (int ,int,int,int ) ;

int genwqe_set_interrupt_capability(struct genwqe_dev *cd, int count)
{
 int rc;

 rc = pci_alloc_irq_vectors(cd->pci_dev, 1, count, PCI_IRQ_MSI);
 if (rc < 0)
  return rc;
 return 0;
}
