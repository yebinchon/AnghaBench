
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eee; } ;
struct stmmac_priv {int phylink; int tx_lpi_timer; int eee_active; int eee_enabled; TYPE_1__ dma_cap; } ;
struct net_device {int dummy; } ;
struct ethtool_eee {int tx_lpi_timer; int eee_active; int eee_enabled; } ;


 int EOPNOTSUPP ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int phylink_ethtool_get_eee (int ,struct ethtool_eee*) ;

__attribute__((used)) static int stmmac_ethtool_op_get_eee(struct net_device *dev,
         struct ethtool_eee *edata)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 if (!priv->dma_cap.eee)
  return -EOPNOTSUPP;

 edata->eee_enabled = priv->eee_enabled;
 edata->eee_active = priv->eee_active;
 edata->tx_lpi_timer = priv->tx_lpi_timer;

 return phylink_ethtool_get_eee(priv->phylink, edata);
}
