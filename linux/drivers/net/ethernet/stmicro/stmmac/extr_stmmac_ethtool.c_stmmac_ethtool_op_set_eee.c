
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int tx_lpi_timer; int eee_enabled; int phylink; } ;
struct net_device {int dummy; } ;
struct ethtool_eee {int tx_lpi_timer; int eee_enabled; } ;


 int EOPNOTSUPP ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int phylink_ethtool_set_eee (int ,struct ethtool_eee*) ;
 int stmmac_disable_eee_mode (struct stmmac_priv*) ;
 int stmmac_eee_init (struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_ethtool_op_set_eee(struct net_device *dev,
         struct ethtool_eee *edata)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 int ret;

 if (!edata->eee_enabled) {
  stmmac_disable_eee_mode(priv);
 } else {




  edata->eee_enabled = stmmac_eee_init(priv);
  if (!edata->eee_enabled)
   return -EOPNOTSUPP;
 }

 ret = phylink_ethtool_set_eee(priv->phylink, edata);
 if (ret)
  return ret;

 priv->eee_enabled = edata->eee_enabled;
 priv->tx_lpi_timer = edata->tx_lpi_timer;
 return 0;
}
