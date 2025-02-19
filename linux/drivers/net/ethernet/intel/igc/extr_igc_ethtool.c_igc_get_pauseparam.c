
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ current_mode; } ;
struct igc_hw {TYPE_1__ fc; } ;
struct igc_adapter {scalar_t__ fc_autoneg; struct igc_hw hw; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 scalar_t__ igc_fc_full ;
 scalar_t__ igc_fc_rx_pause ;
 scalar_t__ igc_fc_tx_pause ;
 struct igc_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void igc_get_pauseparam(struct net_device *netdev,
          struct ethtool_pauseparam *pause)
{
 struct igc_adapter *adapter = netdev_priv(netdev);
 struct igc_hw *hw = &adapter->hw;

 pause->autoneg =
  (adapter->fc_autoneg ? AUTONEG_ENABLE : AUTONEG_DISABLE);

 if (hw->fc.current_mode == igc_fc_rx_pause) {
  pause->rx_pause = 1;
 } else if (hw->fc.current_mode == igc_fc_tx_pause) {
  pause->tx_pause = 1;
 } else if (hw->fc.current_mode == igc_fc_full) {
  pause->rx_pause = 1;
  pause->tx_pause = 1;
 }
}
