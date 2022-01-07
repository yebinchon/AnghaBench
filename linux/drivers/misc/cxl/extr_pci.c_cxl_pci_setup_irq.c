
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct cxl {TYPE_1__ dev; } ;


 int pnv_cxl_ioda_msi_setup (struct pci_dev*,unsigned int,unsigned int) ;
 struct pci_dev* to_pci_dev (int ) ;

int cxl_pci_setup_irq(struct cxl *adapter, unsigned int hwirq,
  unsigned int virq)
{
 struct pci_dev *dev = to_pci_dev(adapter->dev.parent);

 return pnv_cxl_ioda_msi_setup(dev, hwirq, virq);
}
