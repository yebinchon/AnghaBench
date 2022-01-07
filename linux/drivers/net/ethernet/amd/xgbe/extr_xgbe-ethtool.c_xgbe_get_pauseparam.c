
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_pause; int tx_pause; int pause_autoneg; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;


 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xgbe_get_pauseparam(struct net_device *netdev,
    struct ethtool_pauseparam *pause)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 pause->autoneg = pdata->phy.pause_autoneg;
 pause->tx_pause = pdata->phy.tx_pause;
 pause->rx_pause = pdata->phy.rx_pause;
}
