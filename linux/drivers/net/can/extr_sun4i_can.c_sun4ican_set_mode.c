
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int netdev_err (struct net_device*,char*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int sun4i_can_start (struct net_device*) ;

__attribute__((used)) static int sun4ican_set_mode(struct net_device *dev, enum can_mode mode)
{
 int err;

 switch (mode) {
 case 128:
  err = sun4i_can_start(dev);
  if (err) {
   netdev_err(dev, "starting CAN controller failed!\n");
   return err;
  }
  if (netif_queue_stopped(dev))
   netif_wake_queue(dev);
  break;

 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
