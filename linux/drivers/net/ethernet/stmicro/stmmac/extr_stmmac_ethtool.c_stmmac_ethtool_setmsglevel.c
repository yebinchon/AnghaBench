
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void stmmac_ethtool_setmsglevel(struct net_device *dev, u32 level)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 priv->msg_enable = level;

}
