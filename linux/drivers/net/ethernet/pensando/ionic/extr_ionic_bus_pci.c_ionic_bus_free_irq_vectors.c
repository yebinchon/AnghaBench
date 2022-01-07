
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic {int pdev; } ;


 int pci_free_irq_vectors (int ) ;

void ionic_bus_free_irq_vectors(struct ionic *ionic)
{
 pci_free_irq_vectors(ionic->pdev);
}
