
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct net_device {TYPE_5__ dev; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct TYPE_8__ {int (* setup_link ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_7__ {scalar_t__ media_type; } ;
struct TYPE_6__ {int requested_mode; int current_mode; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_2__ phy; TYPE_1__ fc; } ;
struct e1000_adapter {scalar_t__ fc_autoneg; int state; int netdev; struct e1000_hw hw; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int __E1000_RESETTING ;
 int clear_bit (int ,int *) ;
 int e1000_fc_default ;
 int e1000_fc_full ;
 int e1000_fc_none ;
 int e1000_fc_rx_pause ;
 int e1000_fc_tx_pause ;
 scalar_t__ e1000_media_type_fiber ;
 int e1000e_down (struct e1000_adapter*,int) ;
 int e1000e_force_mac_fc (struct e1000_hw*) ;
 int e1000e_reset (struct e1000_adapter*) ;
 int e1000e_set_fc_watermarks (struct e1000_hw*) ;
 int e1000e_up (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int stub1 (struct e1000_hw*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int e1000_set_pauseparam(struct net_device *netdev,
    struct ethtool_pauseparam *pause)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int retval = 0;

 adapter->fc_autoneg = pause->autoneg;

 while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
  usleep_range(1000, 2000);

 pm_runtime_get_sync(netdev->dev.parent);

 if (adapter->fc_autoneg == AUTONEG_ENABLE) {
  hw->fc.requested_mode = e1000_fc_default;
  if (netif_running(adapter->netdev)) {
   e1000e_down(adapter, 1);
   e1000e_up(adapter);
  } else {
   e1000e_reset(adapter);
  }
 } else {
  if (pause->rx_pause && pause->tx_pause)
   hw->fc.requested_mode = e1000_fc_full;
  else if (pause->rx_pause && !pause->tx_pause)
   hw->fc.requested_mode = e1000_fc_rx_pause;
  else if (!pause->rx_pause && pause->tx_pause)
   hw->fc.requested_mode = e1000_fc_tx_pause;
  else if (!pause->rx_pause && !pause->tx_pause)
   hw->fc.requested_mode = e1000_fc_none;

  hw->fc.current_mode = hw->fc.requested_mode;

  if (hw->phy.media_type == e1000_media_type_fiber) {
   retval = hw->mac.ops.setup_link(hw);

  } else {
   retval = e1000e_force_mac_fc(hw);
   if (retval)
    goto out;
   e1000e_set_fc_watermarks(hw);
  }
 }

out:
 pm_runtime_put_sync(netdev->dev.parent);
 clear_bit(__E1000_RESETTING, &adapter->state);
 return retval;
}
