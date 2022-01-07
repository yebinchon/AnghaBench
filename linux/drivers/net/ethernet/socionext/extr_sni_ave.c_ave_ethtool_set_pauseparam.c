
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct ave_private {int pause_tx; int pause_rx; int pause_auto; } ;


 int EINVAL ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int phy_set_asym_pause (struct phy_device*,int ,int ) ;

__attribute__((used)) static int ave_ethtool_set_pauseparam(struct net_device *ndev,
          struct ethtool_pauseparam *pause)
{
 struct ave_private *priv = netdev_priv(ndev);
 struct phy_device *phydev = ndev->phydev;

 if (!phydev)
  return -EINVAL;

 priv->pause_auto = pause->autoneg;
 priv->pause_rx = pause->rx_pause;
 priv->pause_tx = pause->tx_pause;

 phy_set_asym_pause(phydev, pause->rx_pause, pause->tx_pause);

 return 0;
}
