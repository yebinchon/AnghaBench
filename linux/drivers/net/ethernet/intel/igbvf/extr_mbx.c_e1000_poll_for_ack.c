
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* check_for_ack ) (struct e1000_hw*) ;} ;
struct e1000_mbx_info {int timeout; int usec_delay; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_ERR_MBX ;
 int E1000_SUCCESS ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int udelay (int ) ;

__attribute__((used)) static s32 e1000_poll_for_ack(struct e1000_hw *hw)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 int countdown = mbx->timeout;

 if (!mbx->ops.check_for_ack)
  goto out;

 while (countdown && mbx->ops.check_for_ack(hw)) {
  countdown--;
  udelay(mbx->usec_delay);
 }


 if (!countdown)
  mbx->timeout = 0;
out:
 return countdown ? E1000_SUCCESS : -E1000_ERR_MBX;
}
