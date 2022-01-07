
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {struct ax88172a_private* driver_priv; } ;
struct usb_interface {int dummy; } ;
struct ax88172a_private {int dummy; } ;


 int ax88172a_remove_mdio (struct usbnet*) ;
 int kfree (struct ax88172a_private*) ;

__attribute__((used)) static void ax88172a_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct ax88172a_private *priv = dev->driver_priv;

 ax88172a_remove_mdio(dev);
 kfree(priv);
}
