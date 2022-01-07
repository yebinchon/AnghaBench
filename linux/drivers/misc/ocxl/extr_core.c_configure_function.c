
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int dvsec_tl_pos; } ;
struct ocxl_fn {int link; TYPE_1__ config; } ;


 int assign_function_actag (struct ocxl_fn*) ;
 int dev_err (int *,char*,int) ;
 int ocxl_config_read_function (struct pci_dev*,TYPE_1__*) ;
 int ocxl_config_set_TL (struct pci_dev*,int ) ;
 int ocxl_link_release (struct pci_dev*,int ) ;
 int ocxl_link_setup (struct pci_dev*,int ,int *) ;
 int pci_enable_device (struct pci_dev*) ;
 int set_function_device (struct ocxl_fn*,struct pci_dev*) ;
 int set_function_pasid (struct ocxl_fn*) ;

__attribute__((used)) static int configure_function(struct ocxl_fn *fn, struct pci_dev *dev)
{
 int rc;

 rc = pci_enable_device(dev);
 if (rc) {
  dev_err(&dev->dev, "pci_enable_device failed: %d\n", rc);
  return rc;
 }
 rc = ocxl_config_read_function(dev, &fn->config);
 if (rc)
  return rc;

 rc = set_function_device(fn, dev);
 if (rc)
  return rc;

 rc = assign_function_actag(fn);
 if (rc)
  return rc;

 rc = set_function_pasid(fn);
 if (rc)
  return rc;

 rc = ocxl_link_setup(dev, 0, &fn->link);
 if (rc)
  return rc;

 rc = ocxl_config_set_TL(dev, fn->config.dvsec_tl_pos);
 if (rc) {
  ocxl_link_release(dev, fn->link);
  return rc;
 }
 return 0;
}
