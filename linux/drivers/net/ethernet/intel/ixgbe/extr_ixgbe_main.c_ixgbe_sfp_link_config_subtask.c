
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* setup_link ) (struct ixgbe_hw*,int,int) ;int (* get_link_capabilities ) (struct ixgbe_hw*,int*,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; int state; int link_check_timeout; struct ixgbe_hw hw; } ;


 int IXGBE_FLAG_NEED_LINK_CONFIG ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int __IXGBE_IN_SFP_INIT ;
 int clear_bit (int ,int *) ;
 int jiffies ;
 int stub1 (struct ixgbe_hw*,int*,int*) ;
 int stub2 (struct ixgbe_hw*,int,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_sfp_link_config_subtask(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 cap_speed;
 u32 speed;
 bool autoneg = 0;

 if (!(adapter->flags & IXGBE_FLAG_NEED_LINK_CONFIG))
  return;


 if (test_and_set_bit(__IXGBE_IN_SFP_INIT, &adapter->state))
  return;

 adapter->flags &= ~IXGBE_FLAG_NEED_LINK_CONFIG;

 hw->mac.ops.get_link_capabilities(hw, &cap_speed, &autoneg);


 if (!autoneg && (cap_speed & IXGBE_LINK_SPEED_10GB_FULL))
  speed = IXGBE_LINK_SPEED_10GB_FULL;
 else
  speed = cap_speed & (IXGBE_LINK_SPEED_10GB_FULL |
         IXGBE_LINK_SPEED_1GB_FULL);

 if (hw->mac.ops.setup_link)
  hw->mac.ops.setup_link(hw, speed, 1);

 adapter->flags |= IXGBE_FLAG_NEED_LINK_UPDATE;
 adapter->link_check_timeout = jiffies;
 clear_bit(__IXGBE_IN_SFP_INIT, &adapter->state);
}
