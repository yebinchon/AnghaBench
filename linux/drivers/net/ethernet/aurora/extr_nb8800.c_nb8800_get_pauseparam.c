
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct nb8800_priv {int pause_tx; int pause_rx; int pause_aneg; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;


 struct nb8800_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nb8800_get_pauseparam(struct net_device *dev,
      struct ethtool_pauseparam *pp)
{
 struct nb8800_priv *priv = netdev_priv(dev);

 pp->autoneg = priv->pause_aneg;
 pp->rx_pause = priv->pause_rx;
 pp->tx_pause = priv->pause_tx;
}
