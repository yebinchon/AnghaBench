
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct e1000_hw {scalar_t__ media_type; int fc; int original_fc; } ;
struct e1000_adapter {scalar_t__ fc_autoneg; int flags; int netdev; struct e1000_hw hw; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int E1000_FC_FULL ;
 int E1000_FC_NONE ;
 int E1000_FC_RX_PAUSE ;
 int E1000_FC_TX_PAUSE ;
 int __E1000_RESETTING ;
 int clear_bit (int ,int *) ;
 int e1000_down (struct e1000_adapter*) ;
 int e1000_force_mac_fc (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_fiber ;
 int e1000_reset (struct e1000_adapter*) ;
 int e1000_setup_link (struct e1000_hw*) ;
 int e1000_up (struct e1000_adapter*) ;
 int msleep (int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int e1000_set_pauseparam(struct net_device *netdev,
    struct ethtool_pauseparam *pause)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int retval = 0;

 adapter->fc_autoneg = pause->autoneg;

 while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
  msleep(1);

 if (pause->rx_pause && pause->tx_pause)
  hw->fc = E1000_FC_FULL;
 else if (pause->rx_pause && !pause->tx_pause)
  hw->fc = E1000_FC_RX_PAUSE;
 else if (!pause->rx_pause && pause->tx_pause)
  hw->fc = E1000_FC_TX_PAUSE;
 else if (!pause->rx_pause && !pause->tx_pause)
  hw->fc = E1000_FC_NONE;

 hw->original_fc = hw->fc;

 if (adapter->fc_autoneg == AUTONEG_ENABLE) {
  if (netif_running(adapter->netdev)) {
   e1000_down(adapter);
   e1000_up(adapter);
  } else {
   e1000_reset(adapter);
  }
 } else
  retval = ((hw->media_type == e1000_media_type_fiber) ?
     e1000_setup_link(hw) : e1000_force_mac_fc(hw));

 clear_bit(__E1000_RESETTING, &adapter->flags);
 return retval;
}
