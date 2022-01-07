
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmimux_priv {struct net_device* real_dev; } ;
struct net_device {int flags; } ;


 int ENETDOWN ;
 int IFF_UP ;
 struct qmimux_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static int qmimux_open(struct net_device *dev)
{
 struct qmimux_priv *priv = netdev_priv(dev);
 struct net_device *real_dev = priv->real_dev;

 if (!(priv->real_dev->flags & IFF_UP))
  return -ENETDOWN;

 if (netif_carrier_ok(real_dev))
  netif_carrier_on(dev);
 return 0;
}
