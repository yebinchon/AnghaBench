
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ixgbe_mbx_info {int timeout; int usec_delay; TYPE_1__* ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;
struct TYPE_2__ {scalar_t__ (* check_for_msg ) (struct ixgbe_hw*,int ) ;} ;


 int IXGBE_ERR_MBX ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int udelay (int ) ;

__attribute__((used)) static s32 ixgbe_poll_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 int countdown = mbx->timeout;

 if (!countdown || !mbx->ops)
  return IXGBE_ERR_MBX;

 while (mbx->ops->check_for_msg(hw, mbx_id)) {
  countdown--;
  if (!countdown)
   return IXGBE_ERR_MBX;
  udelay(mbx->usec_delay);
 }

 return 0;
}
