
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct cxl {TYPE_1__ dev; } ;


 void pnv_cxl_release_hwirqs (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

void cxl_pci_release_one_irq(struct cxl *adapter, int hwirq)
{
 struct pci_dev *dev = to_pci_dev(adapter->dev.parent);

 return pnv_cxl_release_hwirqs(dev, hwirq, 1);
}
