
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {scalar_t__ reg_base; } ;
struct net_device {int dummy; } ;


 int netdev_err (struct net_device*,char*) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 scalar_t__ sja1000_is_absent (struct sja1000_priv*) ;

__attribute__((used)) static int sja1000_probe_chip(struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);

 if (priv->reg_base && sja1000_is_absent(priv)) {
  netdev_err(dev, "probing failed\n");
  return 0;
 }
 return -1;
}
