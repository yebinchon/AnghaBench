
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* unlock ) (struct e1000_hw*,int ) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_ERR_MBX ;
 int stub1 (struct e1000_hw*,int ) ;

s32 igb_unlock_mbx(struct e1000_hw *hw, u16 mbx_id)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 s32 ret_val = -E1000_ERR_MBX;

 if (mbx->ops.unlock)
  ret_val = mbx->ops.unlock(hw, mbx_id);

 return ret_val;
}
