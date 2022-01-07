
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;


 int EVENT_LINK_CHANGE ;
 int EVENT_LINK_RESET ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int usbnet_defer_kevent (struct usbnet*,int ) ;

void usbnet_link_change(struct usbnet *dev, bool link, bool need_reset)
{

 if (link && !need_reset)
  netif_carrier_on(dev->net);
 else
  netif_carrier_off(dev->net);

 if (need_reset && link)
  usbnet_defer_kevent(dev, EVENT_LINK_RESET);
 else
  usbnet_defer_kevent(dev, EVENT_LINK_CHANGE);
}
