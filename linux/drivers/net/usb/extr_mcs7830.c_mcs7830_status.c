
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;
struct urb {int* transfer_buffer; int actual_length; } ;


 int netdev_dbg (int ,char*,int) ;
 int netif_carrier_ok (int ) ;
 int usbnet_link_change (struct usbnet*,int,int ) ;

__attribute__((used)) static void mcs7830_status(struct usbnet *dev, struct urb *urb)
{
 u8 *buf = urb->transfer_buffer;
 bool link, link_changed;

 if (urb->actual_length < 16)
  return;

 link = !(buf[1] == 0x20);
 link_changed = netif_carrier_ok(dev->net) != link;
 if (link_changed) {
  usbnet_link_change(dev, link, 0);
  netdev_dbg(dev->net, "Link Status is: %d\n", link);
 }
}
