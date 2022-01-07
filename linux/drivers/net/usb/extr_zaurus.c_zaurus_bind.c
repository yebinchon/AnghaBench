
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; scalar_t__ rx_urb_size; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {scalar_t__ mtu; scalar_t__ hard_header_len; } ;


 int usbnet_generic_cdc_bind (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int zaurus_bind(struct usbnet *dev, struct usb_interface *intf)
{



 dev->net->hard_header_len += 6;
 dev->rx_urb_size = dev->net->hard_header_len + dev->net->mtu;
 return usbnet_generic_cdc_bind(dev, intf);
}
