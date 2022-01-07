
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic {int pdev; } ;


 int PCI_IRQ_MSIX ;
 int pci_alloc_irq_vectors (int ,unsigned int,unsigned int,int ) ;

int ionic_bus_alloc_irq_vectors(struct ionic *ionic, unsigned int nintrs)
{
 return pci_alloc_irq_vectors(ionic->pdev, nintrs, nintrs,
         PCI_IRQ_MSIX);
}
