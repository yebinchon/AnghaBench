
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {int restart_work; } ;


 int can_flush_echo_skb (struct net_device*) ;
 int cancel_delayed_work_sync (int *) ;
 struct can_priv* netdev_priv (struct net_device*) ;

void close_candev(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);

 cancel_delayed_work_sync(&priv->restart_work);
 can_flush_echo_skb(dev);
}
