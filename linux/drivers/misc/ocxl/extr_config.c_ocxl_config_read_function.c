
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ocxl_fn_config {int dummy; } ;


 int ENODEV ;
 int dev_err (int *,char*,int) ;
 int read_dvsec_afu_info (struct pci_dev*,struct ocxl_fn_config*) ;
 int read_dvsec_function (struct pci_dev*,struct ocxl_fn_config*) ;
 int read_dvsec_tl (struct pci_dev*,struct ocxl_fn_config*) ;
 int read_dvsec_vendor (struct pci_dev*) ;
 int read_pasid (struct pci_dev*,struct ocxl_fn_config*) ;
 int validate_function (struct pci_dev*,struct ocxl_fn_config*) ;

int ocxl_config_read_function(struct pci_dev *dev, struct ocxl_fn_config *fn)
{
 int rc;

 read_pasid(dev, fn);

 rc = read_dvsec_tl(dev, fn);
 if (rc) {
  dev_err(&dev->dev,
   "Invalid Transaction Layer DVSEC configuration: %d\n",
   rc);
  return -ENODEV;
 }

 rc = read_dvsec_function(dev, fn);
 if (rc) {
  dev_err(&dev->dev,
   "Invalid Function DVSEC configuration: %d\n", rc);
  return -ENODEV;
 }

 rc = read_dvsec_afu_info(dev, fn);
 if (rc) {
  dev_err(&dev->dev, "Invalid AFU configuration: %d\n", rc);
  return -ENODEV;
 }

 rc = read_dvsec_vendor(dev);
 if (rc) {
  dev_err(&dev->dev,
   "Invalid vendor specific DVSEC configuration: %d\n",
   rc);
  return -ENODEV;
 }

 rc = validate_function(dev, fn);
 return rc;
}
