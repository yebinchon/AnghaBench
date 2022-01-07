
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; int sopass; } ;
struct bcm_sysport_priv {int wolopts; int sopass; } ;


 int WAKE_FILTER ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int memcpy (int ,int ,int) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcm_sysport_get_wol(struct net_device *dev,
    struct ethtool_wolinfo *wol)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);

 wol->supported = WAKE_MAGIC | WAKE_MAGICSECURE | WAKE_FILTER;
 wol->wolopts = priv->wolopts;

 if (!(priv->wolopts & WAKE_MAGICSECURE))
  return;

 memcpy(wol->sopass, priv->sopass, sizeof(priv->sopass));
}
