
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct mac_device {int tx_pause_active; int rx_pause_active; int autoneg_pause; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct dpaa_priv {struct mac_device* mac_dev; } ;


 int netdev_err (struct net_device*,char*) ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void dpaa_get_pauseparam(struct net_device *net_dev,
    struct ethtool_pauseparam *epause)
{
 struct mac_device *mac_dev;
 struct dpaa_priv *priv;

 priv = netdev_priv(net_dev);
 mac_dev = priv->mac_dev;

 if (!net_dev->phydev) {
  netdev_err(net_dev, "phy device not initialized\n");
  return;
 }

 epause->autoneg = mac_dev->autoneg_pause;
 epause->rx_pause = mac_dev->rx_pause_active;
 epause->tx_pause = mac_dev->tx_pause_active;
}
