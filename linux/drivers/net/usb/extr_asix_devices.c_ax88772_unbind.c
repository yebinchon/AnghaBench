
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int driver_priv; } ;
struct usb_interface {int dummy; } ;


 int asix_rx_fixup_common_free (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void ax88772_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 asix_rx_fixup_common_free(dev->driver_priv);
 kfree(dev->driver_priv);
}
