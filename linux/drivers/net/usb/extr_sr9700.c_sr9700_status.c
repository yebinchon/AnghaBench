
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;
struct urb {int actual_length; int* transfer_buffer; } ;


 int netdev_dbg (int ,char*,int) ;
 int netif_carrier_ok (int ) ;
 int usbnet_link_change (struct usbnet*,int,int) ;

__attribute__((used)) static void sr9700_status(struct usbnet *dev, struct urb *urb)
{
 int link;
 u8 *buf;
 if (urb->actual_length < 8)
  return;

 buf = urb->transfer_buffer;

 link = !!(buf[0] & 0x40);
 if (netif_carrier_ok(dev->net) != link) {
  usbnet_link_change(dev, link, 1);
  netdev_dbg(dev->net, "Link Status is: %d\n", link);
 }
}
