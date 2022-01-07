
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct urb {int actual_length; unsigned char* transfer_buffer; } ;


 int EVENT_LINK_RESET ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int usbnet_defer_kevent (struct usbnet*,int ) ;

__attribute__((used)) static void ch9200_status(struct usbnet *dev, struct urb *urb)
{
 int link;
 unsigned char *buf;

 if (urb->actual_length < 16)
  return;

 buf = urb->transfer_buffer;
 link = !!(buf[0] & 0x01);

 if (link) {
  netif_carrier_on(dev->net);
  usbnet_defer_kevent(dev, EVENT_LINK_RESET);
 } else {
  netif_carrier_off(dev->net);
 }
}
