
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ixgbe_mbx_info {TYPE_1__* ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;
struct TYPE_2__ {int (* check_for_rst ) (struct ixgbe_hw*,int ) ;} ;


 int IXGBE_ERR_MBX ;
 int stub1 (struct ixgbe_hw*,int ) ;

s32 ixgbe_check_for_rst(struct ixgbe_hw *hw, u16 mbx_id)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;

 if (!mbx->ops)
  return IXGBE_ERR_MBX;

 return mbx->ops->check_for_rst(hw, mbx_id);
}
