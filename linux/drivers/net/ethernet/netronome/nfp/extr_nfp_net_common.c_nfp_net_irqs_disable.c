
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_disable_msix (struct pci_dev*) ;

void nfp_net_irqs_disable(struct pci_dev *pdev)
{
 pci_disable_msix(pdev);
}
