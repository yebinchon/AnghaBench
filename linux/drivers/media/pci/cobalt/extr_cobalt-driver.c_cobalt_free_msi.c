
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct cobalt {int dummy; } ;


 int free_irq (int ,void*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;

__attribute__((used)) static void cobalt_free_msi(struct cobalt *cobalt, struct pci_dev *pci_dev)
{
 free_irq(pci_dev->irq, (void *)cobalt);
 pci_free_irq_vectors(pci_dev);
}
