
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* identify_sfp ) (struct ixgbe_hw*) ;scalar_t__ (* reset ) (struct ixgbe_hw*) ;} ;
struct TYPE_9__ {int sfp_type; TYPE_1__ ops; } ;
struct TYPE_7__ {scalar_t__ (* setup_sfp ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_3__ mac; } ;
struct ixgbe_adapter {int flags2; TYPE_5__* netdev; int state; int flags; scalar_t__ sfp_poll_time; struct ixgbe_hw hw; } ;
typedef scalar_t__ s32 ;
struct TYPE_10__ {scalar_t__ reg_state; } ;


 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ;
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ;
 int IXGBE_FLAG2_SEARCH_FOR_SFP ;
 int IXGBE_FLAG2_SFP_NEEDS_RESET ;
 int IXGBE_FLAG_NEED_LINK_CONFIG ;
 scalar_t__ IXGBE_SFP_POLL_JIFFIES ;
 scalar_t__ NETREG_REGISTERED ;
 int __IXGBE_IN_SFP_INIT ;
 int clear_bit (int ,int *) ;
 int e_dev_err (char*) ;
 int e_info (int ,char*,int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 scalar_t__ jiffies ;
 int probe ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;
 scalar_t__ stub3 (struct ixgbe_hw*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int unregister_netdev (TYPE_5__*) ;

__attribute__((used)) static void ixgbe_sfp_detection_subtask(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 s32 err;


 if (!(adapter->flags2 & IXGBE_FLAG2_SEARCH_FOR_SFP) &&
     !(adapter->flags2 & IXGBE_FLAG2_SFP_NEEDS_RESET))
  return;

 if (adapter->sfp_poll_time &&
     time_after(adapter->sfp_poll_time, jiffies))
  return;


 if (test_and_set_bit(__IXGBE_IN_SFP_INIT, &adapter->state))
  return;

 adapter->sfp_poll_time = jiffies + IXGBE_SFP_POLL_JIFFIES - 1;

 err = hw->phy.ops.identify_sfp(hw);
 if (err == IXGBE_ERR_SFP_NOT_SUPPORTED)
  goto sfp_out;

 if (err == IXGBE_ERR_SFP_NOT_PRESENT) {


  adapter->flags2 |= IXGBE_FLAG2_SFP_NEEDS_RESET;
 }


 if (err)
  goto sfp_out;


 if (!(adapter->flags2 & IXGBE_FLAG2_SFP_NEEDS_RESET))
  goto sfp_out;

 adapter->flags2 &= ~IXGBE_FLAG2_SFP_NEEDS_RESET;






 if (hw->mac.type == ixgbe_mac_82598EB)
  err = hw->phy.ops.reset(hw);
 else
  err = hw->mac.ops.setup_sfp(hw);

 if (err == IXGBE_ERR_SFP_NOT_SUPPORTED)
  goto sfp_out;

 adapter->flags |= IXGBE_FLAG_NEED_LINK_CONFIG;
 e_info(probe, "detected SFP+: %d\n", hw->phy.sfp_type);

sfp_out:
 clear_bit(__IXGBE_IN_SFP_INIT, &adapter->state);

 if ((err == IXGBE_ERR_SFP_NOT_SUPPORTED) &&
     (adapter->netdev->reg_state == NETREG_REGISTERED)) {
  e_dev_err("failed to initialize because an unsupported "
     "SFP+ module type was detected.\n");
  e_dev_err("Reload the driver after installing a "
     "supported module.\n");
  unregister_netdev(adapter->netdev);
 }
}
