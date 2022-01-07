
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgb_hw {TYPE_1__ fc; } ;
struct ixgb_adapter {struct ixgb_hw hw; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;


 int AUTONEG_DISABLE ;
 scalar_t__ ixgb_fc_full ;
 scalar_t__ ixgb_fc_rx_pause ;
 scalar_t__ ixgb_fc_tx_pause ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
ixgb_get_pauseparam(struct net_device *netdev,
    struct ethtool_pauseparam *pause)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct ixgb_hw *hw = &adapter->hw;

 pause->autoneg = AUTONEG_DISABLE;

 if (hw->fc.type == ixgb_fc_rx_pause)
  pause->rx_pause = 1;
 else if (hw->fc.type == ixgb_fc_tx_pause)
  pause->tx_pause = 1;
 else if (hw->fc.type == ixgb_fc_full) {
  pause->rx_pause = 1;
  pause->tx_pause = 1;
 }
}
