
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; int flags; } ;


 int EVENT_RX_PAUSED ;
 int netif_dbg (struct usbnet*,int ,int ,char*) ;
 int rx_status ;
 int set_bit (int ,int *) ;

void usbnet_pause_rx(struct usbnet *dev)
{
 set_bit(EVENT_RX_PAUSED, &dev->flags);

 netif_dbg(dev, rx_status, dev->net, "paused rx queue enabled\n");
}
