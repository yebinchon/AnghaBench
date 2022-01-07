
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct idt_89hpesx_dev {TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 int IDT_VIDDID_CSR ;
 int IDT_VID_MASK ;
 int PCI_VENDOR_ID_IDT ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,int) ;
 int idt_csr_read (struct idt_89hpesx_dev*,int ,int*) ;

__attribute__((used)) static int idt_check_dev(struct idt_89hpesx_dev *pdev)
{
 struct device *dev = &pdev->client->dev;
 u32 viddid;
 int ret;


 ret = idt_csr_read(pdev, IDT_VIDDID_CSR, &viddid);
 if (ret != 0) {
  dev_err(dev, "Failed to read VID/DID");
  return ret;
 }


 if ((viddid & IDT_VID_MASK) != PCI_VENDOR_ID_IDT) {
  dev_err(dev, "Got unsupported VID/DID: 0x%08x", viddid);
  return -ENODEV;
 }

 dev_info(dev, "Found IDT 89HPES device VID:0x%04x, DID:0x%04x",
  (viddid & IDT_VID_MASK), (viddid >> 16));

 return 0;
}
