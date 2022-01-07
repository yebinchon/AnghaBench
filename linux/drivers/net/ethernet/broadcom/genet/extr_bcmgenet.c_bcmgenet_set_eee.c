
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ethtool_eee {int tx_lpi_timer; int eee_enabled; } ;
struct bcmgenet_priv {struct ethtool_eee eee; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 scalar_t__ GENET_IS_V1 (struct bcmgenet_priv*) ;
 int UMAC_EEE_LPI_TIMER ;
 int bcmgenet_eee_enable_set (struct net_device*,int) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int ,int ) ;
 int hw ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int netif_err (struct bcmgenet_priv*,int ,struct net_device*,char*) ;
 int phy_ethtool_set_eee (int ,struct ethtool_eee*) ;
 int phy_init_eee (int ,int ) ;

__attribute__((used)) static int bcmgenet_set_eee(struct net_device *dev, struct ethtool_eee *e)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 struct ethtool_eee *p = &priv->eee;
 int ret = 0;

 if (GENET_IS_V1(priv))
  return -EOPNOTSUPP;

 if (!dev->phydev)
  return -ENODEV;

 p->eee_enabled = e->eee_enabled;

 if (!p->eee_enabled) {
  bcmgenet_eee_enable_set(dev, 0);
 } else {
  ret = phy_init_eee(dev->phydev, 0);
  if (ret) {
   netif_err(priv, hw, dev, "EEE initialization failed\n");
   return ret;
  }

  bcmgenet_umac_writel(priv, e->tx_lpi_timer, UMAC_EEE_LPI_TIMER);
  bcmgenet_eee_enable_set(dev, 1);
 }

 return phy_ethtool_set_eee(dev->phydev, e);
}
