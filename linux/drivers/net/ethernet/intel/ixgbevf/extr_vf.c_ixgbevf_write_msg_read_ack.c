
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* read_posted ) (struct ixgbe_hw*,int *,int ) ;scalar_t__ (* write_posted ) (struct ixgbe_hw*,int *,int ) ;} ;
struct ixgbe_mbx_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef scalar_t__ s32 ;


 scalar_t__ stub1 (struct ixgbe_hw*,int *,int ) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int *,int ) ;

__attribute__((used)) static inline s32 ixgbevf_write_msg_read_ack(struct ixgbe_hw *hw, u32 *msg,
          u32 *retmsg, u16 size)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 s32 retval = mbx->ops.write_posted(hw, msg, size);

 if (retval)
  return retval;

 return mbx->ops.read_posted(hw, retmsg, size);
}
