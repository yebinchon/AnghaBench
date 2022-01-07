
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fc_was_autonegged; int requested_mode; int current_mode; scalar_t__ disable_fc_autoneg; } ;
struct TYPE_7__ {int media_type; } ;
struct TYPE_5__ {int (* check_link ) (struct ixgbe_hw*,int *,int*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ fc; TYPE_3__ phy; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 scalar_t__ IXGBE_ERR_FC_NOT_NEGOTIATED ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int ixgbe_device_supports_autoneg_fc (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_fc_autoneg_backplane (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_fc_autoneg_copper (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_fc_autoneg_fiber (struct ixgbe_hw*) ;



 int stub1 (struct ixgbe_hw*,int *,int*,int) ;

void ixgbe_fc_autoneg(struct ixgbe_hw *hw)
{
 s32 ret_val = IXGBE_ERR_FC_NOT_NEGOTIATED;
 ixgbe_link_speed speed;
 bool link_up;
 if (hw->fc.disable_fc_autoneg)
  goto out;

 hw->mac.ops.check_link(hw, &speed, &link_up, 0);
 if (!link_up)
  goto out;

 switch (hw->phy.media_type) {

 case 128:
  if (speed == IXGBE_LINK_SPEED_1GB_FULL)
   ret_val = ixgbe_fc_autoneg_fiber(hw);
  break;


 case 130:
  ret_val = ixgbe_fc_autoneg_backplane(hw);
  break;


 case 129:
  if (ixgbe_device_supports_autoneg_fc(hw))
   ret_val = ixgbe_fc_autoneg_copper(hw);
  break;

 default:
  break;
 }

out:
 if (ret_val == 0) {
  hw->fc.fc_was_autonegged = 1;
 } else {
  hw->fc.fc_was_autonegged = 0;
  hw->fc.current_mode = hw->fc.requested_mode;
 }
}
