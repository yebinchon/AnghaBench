
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;
struct e1000_hw {scalar_t__ fc; } ;
struct e1000_adapter {scalar_t__ fc_autoneg; struct e1000_hw hw; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 scalar_t__ E1000_FC_FULL ;
 scalar_t__ E1000_FC_RX_PAUSE ;
 scalar_t__ E1000_FC_TX_PAUSE ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_get_pauseparam(struct net_device *netdev,
     struct ethtool_pauseparam *pause)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 pause->autoneg =
  (adapter->fc_autoneg ? AUTONEG_ENABLE : AUTONEG_DISABLE);

 if (hw->fc == E1000_FC_RX_PAUSE) {
  pause->rx_pause = 1;
 } else if (hw->fc == E1000_FC_TX_PAUSE) {
  pause->tx_pause = 1;
 } else if (hw->fc == E1000_FC_FULL) {
  pause->rx_pause = 1;
  pause->tx_pause = 1;
 }
}
