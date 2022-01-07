
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ethtool_eee {int tx_lpi_timer; int eee_active; int eee_enabled; } ;
struct bcmgenet_priv {struct ethtool_eee eee; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 scalar_t__ GENET_IS_V1 (struct bcmgenet_priv*) ;
 int UMAC_EEE_LPI_TIMER ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_get_eee (int ,struct ethtool_eee*) ;

__attribute__((used)) static int bcmgenet_get_eee(struct net_device *dev, struct ethtool_eee *e)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 struct ethtool_eee *p = &priv->eee;

 if (GENET_IS_V1(priv))
  return -EOPNOTSUPP;

 if (!dev->phydev)
  return -ENODEV;

 e->eee_enabled = p->eee_enabled;
 e->eee_active = p->eee_active;
 e->tx_lpi_timer = bcmgenet_umac_readl(priv, UMAC_EEE_LPI_TIMER);

 return phy_ethtool_get_eee(dev->phydev, e);
}
