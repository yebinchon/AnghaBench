
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int release; int * parent; } ;
struct ocxl_fn {TYPE_1__ dev; } ;


 int dev_name (int *) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int free_function_dev ;

__attribute__((used)) static int set_function_device(struct ocxl_fn *fn, struct pci_dev *dev)
{
 int rc;

 fn->dev.parent = &dev->dev;
 fn->dev.release = free_function_dev;
 rc = dev_set_name(&fn->dev, "ocxlfn.%s", dev_name(&dev->dev));
 if (rc)
  return rc;
 return 0;
}
