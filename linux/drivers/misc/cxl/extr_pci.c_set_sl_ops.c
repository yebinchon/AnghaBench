
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct cxl {TYPE_1__* native; } ;
struct TYPE_2__ {int * sl_ops; } ;


 scalar_t__ cxl_is_power8 () ;
 int dev_info (int *,char*) ;
 int psl8_ops ;
 int psl9_ops ;

__attribute__((used)) static void set_sl_ops(struct cxl *adapter, struct pci_dev *dev)
{
 if (cxl_is_power8()) {
  dev_info(&dev->dev, "Device uses a PSL8\n");
  adapter->native->sl_ops = &psl8_ops;
 } else {
  dev_info(&dev->dev, "Device uses a PSL9\n");
  adapter->native->sl_ops = &psl9_ops;
 }
}
