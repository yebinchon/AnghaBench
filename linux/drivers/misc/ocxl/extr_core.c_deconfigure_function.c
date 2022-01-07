
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct ocxl_fn {int link; TYPE_1__ dev; } ;


 int ocxl_link_release (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void deconfigure_function(struct ocxl_fn *fn)
{
 struct pci_dev *dev = to_pci_dev(fn->dev.parent);

 ocxl_link_release(dev, fn->link);
 pci_disable_device(dev);
}
