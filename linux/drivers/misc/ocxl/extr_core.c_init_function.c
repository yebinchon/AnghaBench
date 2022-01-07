
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ocxl_fn {int dev; } ;


 int ENOMEM ;
 struct ocxl_fn* ERR_PTR (int) ;
 struct ocxl_fn* alloc_function () ;
 int configure_function (struct ocxl_fn*,struct pci_dev*) ;
 int deconfigure_function (struct ocxl_fn*) ;
 int device_register (int *) ;
 int free_function (struct ocxl_fn*) ;
 int put_device (int *) ;

__attribute__((used)) static struct ocxl_fn *init_function(struct pci_dev *dev)
{
 struct ocxl_fn *fn;
 int rc;

 fn = alloc_function();
 if (!fn)
  return ERR_PTR(-ENOMEM);

 rc = configure_function(fn, dev);
 if (rc) {
  free_function(fn);
  return ERR_PTR(rc);
 }

 rc = device_register(&fn->dev);
 if (rc) {
  deconfigure_function(fn);
  put_device(&fn->dev);
  return ERR_PTR(rc);
 }
 return fn;
}
