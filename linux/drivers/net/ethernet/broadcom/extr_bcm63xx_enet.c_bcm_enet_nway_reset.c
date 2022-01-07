
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcm_enet_priv {scalar_t__ has_phy; } ;


 int EOPNOTSUPP ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_nway_reset (struct net_device*) ;

__attribute__((used)) static int bcm_enet_nway_reset(struct net_device *dev)
{
 struct bcm_enet_priv *priv;

 priv = netdev_priv(dev);
 if (priv->has_phy)
  return phy_ethtool_nway_reset(dev);

 return -EOPNOTSUPP;
}
