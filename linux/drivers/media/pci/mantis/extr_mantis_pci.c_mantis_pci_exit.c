
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct mantis_pci {scalar_t__ mmio; struct pci_dev* pdev; } ;


 int MANTIS_NOTICE ;
 int dprintk (int ,int,char*,scalar_t__) ;
 int free_irq (int ,struct mantis_pci*) ;
 int iounmap (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int release_mem_region (int ,int ) ;

void mantis_pci_exit(struct mantis_pci *mantis)
{
 struct pci_dev *pdev = mantis->pdev;

 dprintk(MANTIS_NOTICE, 1, " mem: 0x%p", mantis->mmio);
 free_irq(pdev->irq, mantis);
 if (mantis->mmio) {
  iounmap(mantis->mmio);
  release_mem_region(pci_resource_start(pdev, 0),
       pci_resource_len(pdev, 0));
 }

 pci_disable_device(pdev);
}
