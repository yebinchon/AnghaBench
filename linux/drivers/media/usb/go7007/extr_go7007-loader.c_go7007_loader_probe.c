
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int bNumConfigurations; int idProduct; int idVendor; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;
struct firmware {int dummy; } ;
struct TYPE_4__ {char* fw_name1; scalar_t__ vendor; scalar_t__ product; char* fw_name2; } ;


 int CYPRESS_FX2 ;
 int ENODEV ;
 int cypress_load_firmware (struct usb_device*,struct firmware const*,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,char const*) ;
 TYPE_2__* fw_configs ;
 int interface_to_usbdev (struct usb_interface*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,char const*,int *) ;
 struct usb_device* usb_get_dev (int ) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static int go7007_loader_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct usb_device *usbdev;
 const struct firmware *fw;
 u16 vendor, product;
 const char *fw1, *fw2;
 int ret;
 int i;

 usbdev = usb_get_dev(interface_to_usbdev(interface));
 if (!usbdev)
  goto failed2;

 if (usbdev->descriptor.bNumConfigurations != 1) {
  dev_err(&interface->dev, "can't handle multiple config\n");
  goto failed2;
 }

 vendor = le16_to_cpu(usbdev->descriptor.idVendor);
 product = le16_to_cpu(usbdev->descriptor.idProduct);

 for (i = 0; fw_configs[i].fw_name1; i++)
  if (fw_configs[i].vendor == vendor &&
      fw_configs[i].product == product)
   break;


 if (fw_configs[i].fw_name1 == ((void*)0))
  goto failed2;

 fw1 = fw_configs[i].fw_name1;
 fw2 = fw_configs[i].fw_name2;

 dev_info(&interface->dev, "loading firmware %s\n", fw1);

 if (request_firmware(&fw, fw1, &usbdev->dev)) {
  dev_err(&interface->dev,
   "unable to load firmware from file \"%s\"\n", fw1);
  goto failed2;
 }
 ret = cypress_load_firmware(usbdev, fw, CYPRESS_FX2);
 release_firmware(fw);
 if (0 != ret) {
  dev_err(&interface->dev, "loader download failed\n");
  goto failed2;
 }

 if (fw2 == ((void*)0))
  return 0;

 if (request_firmware(&fw, fw2, &usbdev->dev)) {
  dev_err(&interface->dev,
   "unable to load firmware from file \"%s\"\n", fw2);
  goto failed2;
 }
 ret = cypress_load_firmware(usbdev, fw, CYPRESS_FX2);
 release_firmware(fw);
 if (0 != ret) {
  dev_err(&interface->dev, "firmware download failed\n");
  goto failed2;
 }
 return 0;

failed2:
 usb_put_dev(usbdev);
 dev_err(&interface->dev, "probe failed\n");
 return -ENODEV;
}
