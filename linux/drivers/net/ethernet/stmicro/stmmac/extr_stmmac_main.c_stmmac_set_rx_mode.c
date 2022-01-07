
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int hw; } ;
struct net_device {int dummy; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_set_filter (struct stmmac_priv*,int ,struct net_device*) ;

__attribute__((used)) static void stmmac_set_rx_mode(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 stmmac_set_filter(priv, priv->hw, dev);
}
