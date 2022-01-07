
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {int tx_pause; int rx_pause; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; } ;


 struct xgmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xgmac_get_pauseparam(struct net_device *netdev,
          struct ethtool_pauseparam *pause)
{
 struct xgmac_priv *priv = netdev_priv(netdev);

 pause->rx_pause = priv->rx_pause;
 pause->tx_pause = priv->tx_pause;
}
