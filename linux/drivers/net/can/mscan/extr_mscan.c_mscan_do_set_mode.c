
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int mscan_restart (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int mscan_do_set_mode(struct net_device *dev, enum can_mode mode)
{
 int ret = 0;

 switch (mode) {
 case 128:
  ret = mscan_restart(dev);
  if (ret)
   break;
  if (netif_queue_stopped(dev))
   netif_wake_queue(dev);
  break;

 default:
  ret = -EOPNOTSUPP;
  break;
 }
 return ret;
}
