
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 int smsc95xx_reset (struct usbnet*) ;
 int smsc95xx_resume (struct usb_interface*) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int smsc95xx_reset_resume(struct usb_interface *intf)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 int ret;

 ret = smsc95xx_reset(dev);
 if (ret < 0)
  return ret;

 return smsc95xx_resume(intf);
}
