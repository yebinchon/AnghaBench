
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int phylink; } ;
struct net_device {int dummy; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int phylink_ethtool_nway_reset (int ) ;

__attribute__((used)) static int stmmac_nway_reset(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 return phylink_ethtool_nway_reset(priv->phylink);
}
