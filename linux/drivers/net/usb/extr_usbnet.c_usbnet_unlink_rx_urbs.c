
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int bh; int rxq; int net; } ;


 scalar_t__ netif_running (int ) ;
 int tasklet_schedule (int *) ;
 int unlink_urbs (struct usbnet*,int *) ;

void usbnet_unlink_rx_urbs(struct usbnet *dev)
{
 if (netif_running(dev->net)) {
  (void) unlink_urbs (dev, &dev->rxq);
  tasklet_schedule(&dev->bh);
 }
}
