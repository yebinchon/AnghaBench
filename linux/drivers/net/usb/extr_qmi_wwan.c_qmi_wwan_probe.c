
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface_descriptor {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceNumber; int bNumEndpoints; } ;
struct usb_interface {int dev; TYPE_1__* cur_altsetting; } ;
struct usb_device_id {unsigned long driver_info; int match_flags; } ;
struct driver_info {int data; } ;
struct TYPE_2__ {struct usb_interface_descriptor desc; } ;


 int ENODEV ;
 int QMI_WWAN_QUIRK_QUECTEL_DYNCFG ;
 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 int USB_DEVICE_ID_MATCH_INT_NUMBER ;
 int dev_dbg (int *,char*,...) ;
 int qmi_wwan_info ;
 scalar_t__ quectel_ec20_detected (struct usb_interface*) ;
 int usbnet_probe (struct usb_interface*,struct usb_device_id*) ;

__attribute__((used)) static int qmi_wwan_probe(struct usb_interface *intf,
     const struct usb_device_id *prod)
{
 struct usb_device_id *id = (struct usb_device_id *)prod;
 struct usb_interface_descriptor *desc = &intf->cur_altsetting->desc;
 const struct driver_info *info;






 if (!id->driver_info) {
  dev_dbg(&intf->dev, "setting defaults for dynamic device id\n");
  id->driver_info = (unsigned long)&qmi_wwan_info;
 }





 if (id->match_flags & USB_DEVICE_ID_MATCH_INT_NUMBER &&
     desc->bInterfaceClass != USB_CLASS_VENDOR_SPEC) {
  dev_dbg(&intf->dev,
   "Rejecting interface number match for class %02x\n",
   desc->bInterfaceClass);
  return -ENODEV;
 }


 if (quectel_ec20_detected(intf) && desc->bInterfaceNumber == 0) {
  dev_dbg(&intf->dev, "Quectel EC20 quirk, skipping interface 0\n");
  return -ENODEV;
 }







 info = (void *)id->driver_info;

 if (info->data & QMI_WWAN_QUIRK_QUECTEL_DYNCFG) {
  if (desc->bNumEndpoints == 2)
   return -ENODEV;
 }

 return usbnet_probe(intf, id);
}
