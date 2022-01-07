
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* driver_info; int bh; int txq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* recover ) (struct usbnet*) ;} ;


 struct usbnet* netdev_priv (struct net_device*) ;
 int stub1 (struct usbnet*) ;
 int tasklet_schedule (int *) ;
 int unlink_urbs (struct usbnet*,int *) ;

void usbnet_tx_timeout (struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);

 unlink_urbs (dev, &dev->txq);
 tasklet_schedule (&dev->bh);




 if (dev->driver_info->recover)
  (dev->driver_info->recover)(dev);
}
