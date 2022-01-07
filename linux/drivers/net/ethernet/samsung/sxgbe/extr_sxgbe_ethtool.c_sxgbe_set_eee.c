
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_priv_data {int tx_lpi_timer; scalar_t__ eee_enabled; } ;
struct net_device {int phydev; } ;
struct ethtool_eee {int tx_lpi_timer; scalar_t__ eee_enabled; } ;


 int EOPNOTSUPP ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int phy_ethtool_set_eee (int ,struct ethtool_eee*) ;
 int sxgbe_disable_eee_mode (struct sxgbe_priv_data*) ;
 scalar_t__ sxgbe_eee_init (struct sxgbe_priv_data*) ;

__attribute__((used)) static int sxgbe_set_eee(struct net_device *dev,
    struct ethtool_eee *edata)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);

 priv->eee_enabled = edata->eee_enabled;

 if (!priv->eee_enabled) {
  sxgbe_disable_eee_mode(priv);
 } else {




  priv->eee_enabled = sxgbe_eee_init(priv);
  if (!priv->eee_enabled)
   return -EOPNOTSUPP;


  priv->tx_lpi_timer = edata->tx_lpi_timer;
 }

 return phy_ethtool_set_eee(dev->phydev, edata);
}
