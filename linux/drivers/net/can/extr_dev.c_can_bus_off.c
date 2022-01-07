
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {scalar_t__ restart_ms; int restart_work; } ;


 int msecs_to_jiffies (scalar_t__) ;
 int netdev_info (struct net_device*,char*) ;
 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;

void can_bus_off(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);

 netdev_info(dev, "bus-off\n");

 netif_carrier_off(dev);

 if (priv->restart_ms)
  schedule_delayed_work(&priv->restart_work,
          msecs_to_jiffies(priv->restart_ms));
}
