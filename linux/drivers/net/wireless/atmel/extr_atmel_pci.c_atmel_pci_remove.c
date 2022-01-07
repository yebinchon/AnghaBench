
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_get_drvdata (struct pci_dev*) ;
 int stop_atmel_card (int ) ;

__attribute__((used)) static void atmel_pci_remove(struct pci_dev *pdev)
{
 stop_atmel_card(pci_get_drvdata(pdev));
}
