
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct flexcop_pci {int init_state; TYPE_1__* pdev; int io_mem; } ;
struct TYPE_4__ {int irq; } ;


 int FC_PCI_INIT ;
 int free_irq (int ,struct flexcop_pci*) ;
 int pci_disable_device (TYPE_1__*) ;
 int pci_iounmap (TYPE_1__*,int ) ;
 int pci_release_regions (TYPE_1__*) ;

__attribute__((used)) static void flexcop_pci_exit(struct flexcop_pci *fc_pci)
{
 if (fc_pci->init_state & FC_PCI_INIT) {
  free_irq(fc_pci->pdev->irq, fc_pci);
  pci_iounmap(fc_pci->pdev, fc_pci->io_mem);
  pci_release_regions(fc_pci->pdev);
  pci_disable_device(fc_pci->pdev);
 }
 fc_pci->init_state &= ~FC_PCI_INIT;
}
