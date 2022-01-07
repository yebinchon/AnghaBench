
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct genwqe_dev {int mmio; struct pci_dev* pci_dev; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_mem_regions (struct pci_dev*) ;

__attribute__((used)) static void genwqe_pci_remove(struct genwqe_dev *cd)
{
 struct pci_dev *pci_dev = cd->pci_dev;

 if (cd->mmio)
  pci_iounmap(pci_dev, cd->mmio);

 pci_release_mem_regions(pci_dev);
 pci_disable_device(pci_dev);
}
