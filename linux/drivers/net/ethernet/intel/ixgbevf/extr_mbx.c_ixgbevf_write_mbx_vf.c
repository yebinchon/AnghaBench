
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_3__ {int msgs_tx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef scalar_t__ s32 ;


 int IXGBE_VFMAILBOX ;
 int IXGBE_VFMAILBOX_REQ ;
 int IXGBE_VFMBMEM ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int IXGBE_WRITE_REG_ARRAY (struct ixgbe_hw*,int ,size_t,int ) ;
 int ixgbevf_check_for_ack_vf (struct ixgbe_hw*) ;
 int ixgbevf_check_for_msg_vf (struct ixgbe_hw*) ;
 scalar_t__ ixgbevf_obtain_mbx_lock_vf (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbevf_write_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size)
{
 s32 ret_val;
 u16 i;


 ret_val = ixgbevf_obtain_mbx_lock_vf(hw);
 if (ret_val)
  goto out_no_write;


 ixgbevf_check_for_msg_vf(hw);
 ixgbevf_check_for_ack_vf(hw);


 for (i = 0; i < size; i++)
  IXGBE_WRITE_REG_ARRAY(hw, IXGBE_VFMBMEM, i, msg[i]);


 hw->mbx.stats.msgs_tx++;


 IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, IXGBE_VFMAILBOX_REQ);

out_no_write:
 return ret_val;
}
