
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct cxl {TYPE_1__* native; } ;
struct TYPE_2__ {int * p1_mmio; void* p2_mmio; } ;


 int ENOMEM ;
 void* ioremap (int ,int ) ;
 int iounmap (int *) ;
 int p1_base (struct pci_dev*) ;
 int p1_size (struct pci_dev*) ;
 int p2_base (struct pci_dev*) ;
 int p2_size (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;
 scalar_t__ pci_request_region (struct pci_dev*,int,char*) ;
 int pr_devel (char*,int ,int ,int ,int ) ;

__attribute__((used)) static int cxl_map_adapter_regs(struct cxl *adapter, struct pci_dev *dev)
{
 if (pci_request_region(dev, 2, "priv 2 regs"))
  goto err1;
 if (pci_request_region(dev, 0, "priv 1 regs"))
  goto err2;

 pr_devel("cxl_map_adapter_regs: p1: %#016llx %#llx, p2: %#016llx %#llx",
   p1_base(dev), p1_size(dev), p2_base(dev), p2_size(dev));

 if (!(adapter->native->p1_mmio = ioremap(p1_base(dev), p1_size(dev))))
  goto err3;

 if (!(adapter->native->p2_mmio = ioremap(p2_base(dev), p2_size(dev))))
  goto err4;

 return 0;

err4:
 iounmap(adapter->native->p1_mmio);
 adapter->native->p1_mmio = ((void*)0);
err3:
 pci_release_region(dev, 0);
err2:
 pci_release_region(dev, 2);
err1:
 return -ENOMEM;
}
