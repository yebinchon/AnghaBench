
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int bAlternateSetting; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;


 int ENODEV ;
 int deb (char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;

__attribute__((used)) static int m920x_init_ep(struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct usb_host_interface *alt;

 if ((alt = usb_altnum_to_altsetting(intf, 1)) == ((void*)0)) {
  deb("No alt found!\n");
  return -ENODEV;
 }

 return usb_set_interface(udev, alt->desc.bInterfaceNumber,
     alt->desc.bAlternateSetting);
}
