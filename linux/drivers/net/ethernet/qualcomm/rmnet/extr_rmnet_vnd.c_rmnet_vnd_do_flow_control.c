
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netdev_dbg (struct net_device*,char*,int) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ unlikely (int) ;

int rmnet_vnd_do_flow_control(struct net_device *rmnet_dev, int enable)
{
 netdev_dbg(rmnet_dev, "Setting VND TX queue state to %d\n", enable);




 if (unlikely(enable))
  netif_wake_queue(rmnet_dev);
 else
  netif_stop_queue(rmnet_dev);

 return 0;
}
