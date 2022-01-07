
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device {scalar_t__ product; scalar_t__ manufacturer; TYPE_1__* actconfig; } ;
struct TYPE_4__ {int bmAttributes; } ;
struct TYPE_3__ {TYPE_2__ desc; } ;


 char const* RC_MAP_MEDION_X10 ;
 char const* RC_MAP_MEDION_X10_DIGITAINER ;
 char const* RC_MAP_MEDION_X10_OR2X ;
 int USB_CONFIG_ATT_WAKEUP ;
 int dev_info (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static const char *get_medion_keymap(struct usb_interface *interface)
{
 struct usb_device *udev = interface_to_usbdev(interface);







 if (udev->manufacturer && udev->product) {
  if (udev->actconfig->desc.bmAttributes & USB_CONFIG_ATT_WAKEUP) {

   if (!strcmp(udev->manufacturer, "X10 Wireless Technology Inc")
       && !strcmp(udev->product, "USB Receiver"))
    return RC_MAP_MEDION_X10_DIGITAINER;

   if (!strcmp(udev->manufacturer, "X10 WTI")
       && !strcmp(udev->product, "RF receiver"))
    return RC_MAP_MEDION_X10_OR2X;
  } else {

    if (!strcmp(udev->manufacturer, "X10 Wireless Technology Inc")
       && !strcmp(udev->product, "USB Receiver"))
    return RC_MAP_MEDION_X10;
  }
 }

 dev_info(&interface->dev,
   "Unknown Medion X10 receiver, using default ati_remote Medion keymap\n");

 return RC_MAP_MEDION_X10;
}
