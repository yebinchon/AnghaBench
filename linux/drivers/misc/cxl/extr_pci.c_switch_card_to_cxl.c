
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;


 int CXL_READ_VSEC_MODE_CONTROL (struct pci_dev*,int,int*) ;
 int CXL_VSEC_PROTOCOL_256TB ;
 int CXL_VSEC_PROTOCOL_ENABLE ;
 int CXL_VSEC_PROTOCOL_MASK ;
 int CXL_WRITE_VSEC_MODE_CONTROL (struct pci_dev*,int,int) ;
 int ENODEV ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int find_cxl_vsec (struct pci_dev*) ;
 int msleep (int) ;

__attribute__((used)) static int switch_card_to_cxl(struct pci_dev *dev)
{
 int vsec;
 u8 val;
 int rc;

 dev_info(&dev->dev, "switch card to CXL\n");

 if (!(vsec = find_cxl_vsec(dev))) {
  dev_err(&dev->dev, "ABORTING: CXL VSEC not found!\n");
  return -ENODEV;
 }

 if ((rc = CXL_READ_VSEC_MODE_CONTROL(dev, vsec, &val))) {
  dev_err(&dev->dev, "failed to read current mode control: %i", rc);
  return rc;
 }
 val &= ~CXL_VSEC_PROTOCOL_MASK;
 val |= CXL_VSEC_PROTOCOL_256TB | CXL_VSEC_PROTOCOL_ENABLE;
 if ((rc = CXL_WRITE_VSEC_MODE_CONTROL(dev, vsec, val))) {
  dev_err(&dev->dev, "failed to enable CXL protocol: %i", rc);
  return rc;
 }





 msleep(100);

 return 0;
}
