
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_3__ {int msgs_rx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef scalar_t__ s32 ;


 int IXGBE_READ_REG_ARRAY (struct ixgbe_hw*,int ,size_t) ;
 int IXGBE_VFMAILBOX ;
 int IXGBE_VFMAILBOX_ACK ;
 int IXGBE_VFMBMEM ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 scalar_t__ ixgbevf_obtain_mbx_lock_vf (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbevf_read_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size)
{
 s32 ret_val = 0;
 u16 i;


 ret_val = ixgbevf_obtain_mbx_lock_vf(hw);
 if (ret_val)
  goto out_no_read;


 for (i = 0; i < size; i++)
  msg[i] = IXGBE_READ_REG_ARRAY(hw, IXGBE_VFMBMEM, i);


 IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, IXGBE_VFMAILBOX_ACK);


 hw->mbx.stats.msgs_rx++;

out_no_read:
 return ret_val;
}
