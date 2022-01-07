
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct ave_private {int pause_tx; int pause_rx; int pause_auto; } ;


 struct ave_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ave_ethtool_get_pauseparam(struct net_device *ndev,
           struct ethtool_pauseparam *pause)
{
 struct ave_private *priv = netdev_priv(ndev);

 pause->autoneg = priv->pause_auto;
 pause->rx_pause = priv->pause_rx;
 pause->tx_pause = priv->pause_tx;
}
