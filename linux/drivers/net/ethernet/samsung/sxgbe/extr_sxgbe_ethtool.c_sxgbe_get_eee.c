
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eee; } ;
struct sxgbe_priv_data {int tx_lpi_timer; int eee_active; int eee_enabled; TYPE_1__ hw_cap; } ;
struct net_device {int phydev; } ;
struct ethtool_eee {int tx_lpi_timer; int eee_active; int eee_enabled; } ;


 int EOPNOTSUPP ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int phy_ethtool_get_eee (int ,struct ethtool_eee*) ;

__attribute__((used)) static int sxgbe_get_eee(struct net_device *dev,
    struct ethtool_eee *edata)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);

 if (!priv->hw_cap.eee)
  return -EOPNOTSUPP;

 edata->eee_enabled = priv->eee_enabled;
 edata->eee_active = priv->eee_active;
 edata->tx_lpi_timer = priv->tx_lpi_timer;

 return phy_ethtool_get_eee(dev->phydev, edata);
}
