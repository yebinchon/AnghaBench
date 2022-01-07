
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;
struct cpsw_priv {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;


 int AUTONEG_DISABLE ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;

void cpsw_get_pauseparam(struct net_device *ndev,
    struct ethtool_pauseparam *pause)
{
 struct cpsw_priv *priv = netdev_priv(ndev);

 pause->autoneg = AUTONEG_DISABLE;
 pause->rx_pause = priv->rx_pause ? 1 : 0;
 pause->tx_pause = priv->tx_pause ? 1 : 0;
}
