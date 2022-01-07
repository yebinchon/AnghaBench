
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic {int pdev; } ;


 int pci_irq_vector (int ,unsigned int) ;

int ionic_bus_get_irq(struct ionic *ionic, unsigned int num)
{
 return pci_irq_vector(ionic->pdev, num);
}
