
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_descriptor {scalar_t__ idVendor; scalar_t__ idProduct; scalar_t__ bDeviceClass; int bDeviceProtocol; } ;
struct usb_device {struct usb_device_descriptor descriptor; } ;


 scalar_t__ USB_CLASS_WIRELESS_CONTROLLER ;
 int VENDOR_BELKIN ;
 scalar_t__ cpu_to_le16 (int) ;

__attribute__((used)) static int pegasus_blacklisted(struct usb_device *udev)
{
 struct usb_device_descriptor *udd = &udev->descriptor;




 if ((udd->idVendor == cpu_to_le16(VENDOR_BELKIN)) &&
     (udd->idProduct == cpu_to_le16(0x0121)) &&
     (udd->bDeviceClass == USB_CLASS_WIRELESS_CONTROLLER) &&
     (udd->bDeviceProtocol == 1))
  return 1;

 return 0;
}
