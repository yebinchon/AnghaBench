
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmnet_priv {TYPE_1__* real_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 struct rmnet_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int rmnet_vnd_get_iflink(const struct net_device *dev)
{
 struct rmnet_priv *priv = netdev_priv(dev);

 return priv->real_dev->ifindex;
}
