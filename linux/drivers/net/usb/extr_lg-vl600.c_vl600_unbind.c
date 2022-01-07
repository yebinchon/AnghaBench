
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl600_state {int current_rx_buf; } ;
struct usbnet {struct vl600_state* driver_priv; } ;
struct usb_interface {int dummy; } ;


 int dev_kfree_skb (int ) ;
 int kfree (struct vl600_state*) ;
 void usbnet_cdc_unbind (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static void vl600_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct vl600_state *s = dev->driver_priv;

 dev_kfree_skb(s->current_rx_buf);
 kfree(s);

 return usbnet_cdc_unbind(dev, intf);
}
