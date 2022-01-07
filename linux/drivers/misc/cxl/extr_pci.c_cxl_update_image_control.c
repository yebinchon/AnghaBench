
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct cxl {scalar_t__ perst_select_user; scalar_t__ perst_loads_image; TYPE_1__ dev; } ;


 int CXL_READ_VSEC_IMAGE_STATE (struct pci_dev*,int,int *) ;
 int CXL_VSEC_PERST_LOADS_IMAGE ;
 int CXL_VSEC_PERST_SELECT_USER ;
 int CXL_WRITE_VSEC_IMAGE_STATE (struct pci_dev*,int,int ) ;
 int ENODEV ;
 int dev_err (int *,char*,...) ;
 int find_cxl_vsec (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

int cxl_update_image_control(struct cxl *adapter)
{
 struct pci_dev *dev = to_pci_dev(adapter->dev.parent);
 int rc;
 int vsec;
 u8 image_state;

 if (!(vsec = find_cxl_vsec(dev))) {
  dev_err(&dev->dev, "ABORTING: CXL VSEC not found!\n");
  return -ENODEV;
 }

 if ((rc = CXL_READ_VSEC_IMAGE_STATE(dev, vsec, &image_state))) {
  dev_err(&dev->dev, "failed to read image state: %i\n", rc);
  return rc;
 }

 if (adapter->perst_loads_image)
  image_state |= CXL_VSEC_PERST_LOADS_IMAGE;
 else
  image_state &= ~CXL_VSEC_PERST_LOADS_IMAGE;

 if (adapter->perst_select_user)
  image_state |= CXL_VSEC_PERST_SELECT_USER;
 else
  image_state &= ~CXL_VSEC_PERST_SELECT_USER;

 if ((rc = CXL_WRITE_VSEC_IMAGE_STATE(dev, vsec, image_state))) {
  dev_err(&dev->dev, "failed to update image control: %i\n", rc);
  return rc;
 }

 return 0;
}
