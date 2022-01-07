
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;


 int dev_err (int *,char*,int) ;
 int pnv_ocxl_get_actag (struct pci_dev*,int *,int *,int *) ;

int ocxl_config_get_actag_info(struct pci_dev *dev, u16 *base, u16 *enabled,
   u16 *supported)
{
 int rc;






 rc = pnv_ocxl_get_actag(dev, base, enabled, supported);
 if (rc) {
  dev_err(&dev->dev, "Can't get actag for device: %d\n", rc);
  return rc;
 }
 return 0;
}
