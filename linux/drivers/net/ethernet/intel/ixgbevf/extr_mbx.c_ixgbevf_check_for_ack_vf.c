
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int acks; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_MBX ;
 int IXGBE_VFMAILBOX_PFACK ;
 int ixgbevf_check_for_bit_vf (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbevf_check_for_ack_vf(struct ixgbe_hw *hw)
{
 s32 ret_val = IXGBE_ERR_MBX;

 if (!ixgbevf_check_for_bit_vf(hw, IXGBE_VFMAILBOX_PFACK)) {
  ret_val = 0;
  hw->mbx.stats.acks++;
 }

 return ret_val;
}
