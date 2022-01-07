
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct nb8800_priv {int pause_aneg; int pause_tx; int pause_rx; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;


 int nb8800_pause_adv (struct net_device*) ;
 int nb8800_pause_config (struct net_device*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int phy_start_aneg (struct phy_device*) ;

__attribute__((used)) static int nb8800_set_pauseparam(struct net_device *dev,
     struct ethtool_pauseparam *pp)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;

 priv->pause_aneg = pp->autoneg;
 priv->pause_rx = pp->rx_pause;
 priv->pause_tx = pp->tx_pause;

 nb8800_pause_adv(dev);

 if (!priv->pause_aneg)
  nb8800_pause_config(dev);
 else if (phydev)
  phy_start_aneg(phydev);

 return 0;
}
