
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {struct asix_common_private* driver_priv; } ;
struct usb_interface {int dummy; } ;
struct asix_common_private {int (* suspend ) (struct usbnet*) ;} ;
typedef int pm_message_t ;


 int stub1 (struct usbnet*) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_suspend (struct usb_interface*,int ) ;

__attribute__((used)) static int asix_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 struct asix_common_private *priv = dev->driver_priv;

 if (priv && priv->suspend)
  priv->suspend(dev);

 return usbnet_suspend(intf, message);
}
