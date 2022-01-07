
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dev_close (struct net_device*) ;
 int netdev_info (struct net_device*,char*,int) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int sky2_open (struct net_device*) ;
 int sky2_set_multicast (struct net_device*) ;

__attribute__((used)) static int sky2_reattach(struct net_device *dev)
{
 int err = 0;

 if (netif_running(dev)) {
  err = sky2_open(dev);
  if (err) {
   netdev_info(dev, "could not restart %d\n", err);
   dev_close(dev);
  } else {
   netif_device_attach(dev);
   sky2_set_multicast(dev);
  }
 }

 return err;
}
