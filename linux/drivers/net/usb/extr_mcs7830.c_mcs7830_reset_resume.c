
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 int mcs7830_apply_base_config (struct usbnet*) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_resume (struct usb_interface*) ;

__attribute__((used)) static int mcs7830_reset_resume (struct usb_interface *intf)
{



 struct usbnet *dev = usb_get_intfdata(intf);

 mcs7830_apply_base_config(dev);

 usbnet_resume(intf);

 return 0;
}
