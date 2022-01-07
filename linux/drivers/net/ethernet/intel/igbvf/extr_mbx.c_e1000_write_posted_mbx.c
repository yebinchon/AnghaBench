
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write ) (struct e1000_hw*,int *,int ) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; int timeout; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_MBX ;
 scalar_t__ e1000_poll_for_ack (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int *,int ) ;

__attribute__((used)) static s32 e1000_write_posted_mbx(struct e1000_hw *hw, u32 *msg, u16 size)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 s32 ret_val = -E1000_ERR_MBX;


 if (!mbx->ops.write || !mbx->timeout)
  goto out;


 ret_val = mbx->ops.write(hw, msg, size);


 if (!ret_val)
  ret_val = e1000_poll_for_ack(hw);
out:
 return ret_val;
}
