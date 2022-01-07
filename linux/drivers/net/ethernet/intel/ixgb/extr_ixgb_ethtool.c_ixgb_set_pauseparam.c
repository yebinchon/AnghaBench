
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct ixgb_hw {TYPE_1__ fc; } ;
struct ixgb_adapter {int netdev; struct ixgb_hw hw; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 int ixgb_down (struct ixgb_adapter*,int) ;
 int ixgb_fc_full ;
 int ixgb_fc_none ;
 int ixgb_fc_rx_pause ;
 int ixgb_fc_tx_pause ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int ixgb_set_speed_duplex (struct net_device*) ;
 int ixgb_up (struct ixgb_adapter*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int
ixgb_set_pauseparam(struct net_device *netdev,
    struct ethtool_pauseparam *pause)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct ixgb_hw *hw = &adapter->hw;

 if (pause->autoneg == AUTONEG_ENABLE)
  return -EINVAL;

 if (pause->rx_pause && pause->tx_pause)
  hw->fc.type = ixgb_fc_full;
 else if (pause->rx_pause && !pause->tx_pause)
  hw->fc.type = ixgb_fc_rx_pause;
 else if (!pause->rx_pause && pause->tx_pause)
  hw->fc.type = ixgb_fc_tx_pause;
 else if (!pause->rx_pause && !pause->tx_pause)
  hw->fc.type = ixgb_fc_none;

 if (netif_running(adapter->netdev)) {
  ixgb_down(adapter, 1);
  ixgb_up(adapter);
  ixgb_set_speed_duplex(netdev);
 } else
  ixgb_reset(adapter);

 return 0;
}
