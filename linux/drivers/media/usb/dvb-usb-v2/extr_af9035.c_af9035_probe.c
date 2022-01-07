
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int idProduct; int idVendor; int iManufacturer; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;
typedef int manufacturer ;


 int ENODEV ;
 int USB_VID_TERRATEC ;
 int dev_dbg (int *,char*) ;
 int dvb_usbv2_probe (struct usb_interface*,struct usb_device_id const*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int memset (char*,int ,int) ;
 int strcmp (char*,char*) ;
 int usb_string (struct usb_device*,int ,char*,int) ;

__attribute__((used)) static int af9035_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 char manufacturer[sizeof("Afatech")];

 memset(manufacturer, 0, sizeof(manufacturer));
 usb_string(udev, udev->descriptor.iManufacturer,
   manufacturer, sizeof(manufacturer));
 if ((le16_to_cpu(udev->descriptor.idVendor) == USB_VID_TERRATEC) &&
   (le16_to_cpu(udev->descriptor.idProduct) == 0x0099)) {
  if (!strcmp("Afatech", manufacturer)) {
   dev_dbg(&udev->dev, "rejecting device\n");
   return -ENODEV;
  }
 }

 return dvb_usbv2_probe(intf, id);
}
