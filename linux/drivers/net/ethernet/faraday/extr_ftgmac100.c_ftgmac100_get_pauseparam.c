
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftgmac100 {int rx_pause; int tx_pause; int aneg_pause; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;


 struct ftgmac100* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ftgmac100_get_pauseparam(struct net_device *netdev,
         struct ethtool_pauseparam *pause)
{
 struct ftgmac100 *priv = netdev_priv(netdev);

 pause->autoneg = priv->aneg_pause;
 pause->tx_pause = priv->tx_pause;
 pause->rx_pause = priv->rx_pause;
}
