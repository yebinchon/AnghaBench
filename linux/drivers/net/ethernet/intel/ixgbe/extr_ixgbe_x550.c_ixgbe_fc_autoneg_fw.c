
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ requested_mode; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 scalar_t__ ixgbe_fc_default ;
 scalar_t__ ixgbe_fc_full ;
 int ixgbe_setup_fw_link (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_fc_autoneg_fw(struct ixgbe_hw *hw)
{
 if (hw->fc.requested_mode == ixgbe_fc_default)
  hw->fc.requested_mode = ixgbe_fc_full;

 return ixgbe_setup_fw_link(hw);
}
