
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_11__ {scalar_t__ mdix; int autoneg_advertised; } ;
struct TYPE_9__ {int requested_mode; } ;
struct TYPE_8__ {int autoneg; } ;
struct igc_hw {TYPE_5__ phy; TYPE_3__ fc; TYPE_2__ mac; } ;
struct igc_adapter {int state; int netdev; TYPE_4__* pdev; scalar_t__ fc_autoneg; struct igc_hw hw; } ;
struct TYPE_12__ {scalar_t__ eth_tp_mdix_ctrl; scalar_t__ autoneg; } ;
struct TYPE_7__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_6__ base; TYPE_1__ link_modes; } ;
struct TYPE_10__ {int dev; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ AUTO_ALL_MODES ;
 int EINVAL ;
 scalar_t__ ETH_TP_MDI_AUTO ;
 int __IGC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int *,int ) ;
 scalar_t__ igc_check_reset_block (struct igc_hw*) ;
 int igc_down (struct igc_adapter*) ;
 int igc_fc_default ;
 int igc_reset (struct igc_adapter*) ;
 int igc_up (struct igc_adapter*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int igc_set_link_ksettings(struct net_device *netdev,
      const struct ethtool_link_ksettings *cmd)
{
 struct igc_adapter *adapter = netdev_priv(netdev);
 struct igc_hw *hw = &adapter->hw;
 u32 advertising;




 if (igc_check_reset_block(hw)) {
  dev_err(&adapter->pdev->dev,
   "Cannot change link characteristics when reset is active.\n");
  return -EINVAL;
 }





 if (cmd->base.eth_tp_mdix_ctrl) {
  if (cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO &&
      cmd->base.autoneg != AUTONEG_ENABLE) {
   dev_err(&adapter->pdev->dev, "forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\n");
   return -EINVAL;
  }
 }

 while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
  usleep_range(1000, 2000);

 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      cmd->link_modes.advertising);

 if (cmd->base.autoneg == AUTONEG_ENABLE) {
  hw->mac.autoneg = 1;
  hw->phy.autoneg_advertised = advertising;
  if (adapter->fc_autoneg)
   hw->fc.requested_mode = igc_fc_default;
 } else {

  dev_info(&adapter->pdev->dev,
    "Force mode currently not supported\n");
 }


 if (cmd->base.eth_tp_mdix_ctrl) {



  if (cmd->base.eth_tp_mdix_ctrl == ETH_TP_MDI_AUTO)
   hw->phy.mdix = AUTO_ALL_MODES;
  else
   hw->phy.mdix = cmd->base.eth_tp_mdix_ctrl;
 }


 if (netif_running(adapter->netdev)) {
  igc_down(adapter);
  igc_up(adapter);
 } else {
  igc_reset(adapter);
 }

 clear_bit(__IGC_RESETTING, &adapter->state);

 return 0;
}
