
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct cxl_irq_ranges {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct cxl {TYPE_1__ dev; } ;


 int pnv_cxl_release_hwirq_ranges (struct cxl_irq_ranges*,struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

void cxl_pci_release_irq_ranges(struct cxl_irq_ranges *irqs,
    struct cxl *adapter)
{
 struct pci_dev *dev = to_pci_dev(adapter->dev.parent);

 pnv_cxl_release_hwirq_ranges(irqs, dev);
}
