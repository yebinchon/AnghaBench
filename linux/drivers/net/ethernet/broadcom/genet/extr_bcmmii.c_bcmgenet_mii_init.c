
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcmgenet_priv {int dummy; } ;


 int bcmgenet_mii_bus_init (struct bcmgenet_priv*) ;
 int bcmgenet_mii_exit (struct net_device*) ;
 int bcmgenet_mii_register (struct bcmgenet_priv*) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

int bcmgenet_mii_init(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 int ret;

 ret = bcmgenet_mii_register(priv);
 if (ret)
  return ret;

 ret = bcmgenet_mii_bus_init(priv);
 if (ret)
  goto out;

 return 0;

out:
 bcmgenet_mii_exit(dev);
 return ret;
}
