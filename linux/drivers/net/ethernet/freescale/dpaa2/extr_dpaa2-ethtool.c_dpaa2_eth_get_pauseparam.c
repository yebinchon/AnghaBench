
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;
struct TYPE_2__ {int options; } ;
struct dpaa2_eth_priv {TYPE_1__ link_state; } ;


 int AUTONEG_DISABLE ;
 int DPNI_LINK_OPT_ASYM_PAUSE ;
 int DPNI_LINK_OPT_PAUSE ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void dpaa2_eth_get_pauseparam(struct net_device *net_dev,
         struct ethtool_pauseparam *pause)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 u64 link_options = priv->link_state.options;

 pause->rx_pause = !!(link_options & DPNI_LINK_OPT_PAUSE);
 pause->tx_pause = pause->rx_pause ^
     !!(link_options & DPNI_LINK_OPT_ASYM_PAUSE);
 pause->autoneg = AUTONEG_DISABLE;
}
