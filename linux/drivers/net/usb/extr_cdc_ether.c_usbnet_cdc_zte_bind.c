
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int* dev_addr; } ;


 int eth_hw_addr_random (TYPE_1__*) ;
 int usbnet_cdc_bind (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int usbnet_cdc_zte_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int status = usbnet_cdc_bind(dev, intf);

 if (!status && (dev->net->dev_addr[0] & 0x02))
  eth_hw_addr_random(dev->net);

 return status;
}
