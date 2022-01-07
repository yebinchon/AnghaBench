
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {struct net_device_stats stats; } ;


 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *mwifiex_get_stats(struct net_device *dev)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 return &priv->stats;
}
