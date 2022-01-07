
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_7__ {int (* set_phy_power ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int (* init_hw ) (struct ixgbe_hw*) ;int (* set_vmdq_san_mac ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_6__ {TYPE_1__ ops; scalar_t__ san_mac_rar_index; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ mac; int hw_addr; } ;
struct ixgbe_adapter {int flags2; int wol; struct net_device* netdev; int state; int flags; struct ixgbe_hw hw; } ;






 int IXGBE_FLAG2_SEARCH_FOR_SFP ;
 int IXGBE_FLAG2_SFP_NEEDS_RESET ;
 int IXGBE_FLAG_NEED_LINK_CONFIG ;
 int VMDQ_P (int ) ;
 int __IXGBE_IN_SFP_INIT ;
 int __IXGBE_PTP_RUNNING ;
 int __dev_uc_unsync (struct net_device*,int *) ;
 int clear_bit (int ,int *) ;
 int e_dev_err (char*,...) ;
 int e_dev_warn (char*) ;
 int ixgbe_flush_sw_mac_table (struct ixgbe_adapter*) ;
 int ixgbe_mac_set_default_filter (struct ixgbe_adapter*) ;
 int ixgbe_ptp_reset (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_removed (int ) ;
 int netif_running (struct net_device*) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ) ;
 int stub3 (struct ixgbe_hw*,int) ;
 int stub4 (struct ixgbe_hw*,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

void ixgbe_reset(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 int err;

 if (ixgbe_removed(hw->hw_addr))
  return;

 while (test_and_set_bit(__IXGBE_IN_SFP_INIT, &adapter->state))
  usleep_range(1000, 2000);


 adapter->flags2 &= ~(IXGBE_FLAG2_SEARCH_FOR_SFP |
        IXGBE_FLAG2_SFP_NEEDS_RESET);
 adapter->flags &= ~IXGBE_FLAG_NEED_LINK_CONFIG;

 err = hw->mac.ops.init_hw(hw);
 switch (err) {
 case 0:
 case 129:
 case 128:
  break;
 case 130:
  e_dev_err("master disable timed out\n");
  break;
 case 131:

  e_dev_warn("This device is a pre-production adapter/LOM. "
      "Please be aware there may be issues associated with "
      "your hardware.  If you are experiencing problems "
      "please contact your Intel or hardware "
      "representative who provided you with this "
      "hardware.\n");
  break;
 default:
  e_dev_err("Hardware Error: %d\n", err);
 }

 clear_bit(__IXGBE_IN_SFP_INIT, &adapter->state);


 ixgbe_flush_sw_mac_table(adapter);
 __dev_uc_unsync(netdev, ((void*)0));


 ixgbe_mac_set_default_filter(adapter);


 if (hw->mac.san_mac_rar_index)
  hw->mac.ops.set_vmdq_san_mac(hw, VMDQ_P(0));

 if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
  ixgbe_ptp_reset(adapter);

 if (hw->phy.ops.set_phy_power) {
  if (!netif_running(adapter->netdev) && !adapter->wol)
   hw->phy.ops.set_phy_power(hw, 0);
  else
   hw->phy.ops.set_phy_power(hw, 1);
 }
}
