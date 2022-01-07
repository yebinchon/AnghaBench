
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int (* process ) (struct fm10k_hw*,struct fm10k_mbx_info*) ;} ;
struct fm10k_mbx_info {int state; TYPE_1__ ops; int tail_len; int tx_busy; scalar_t__ timeout; int tx; int udelay; } ;
struct fm10k_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ FM10K_MBX_ERR_NO_MBX ;


 scalar_t__ fm10k_fifo_enqueue (int *,scalar_t__ const*) ;
 int stub1 (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 int stub2 (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 int udelay (int ) ;

__attribute__((used)) static s32 fm10k_mbx_enqueue_tx(struct fm10k_hw *hw,
    struct fm10k_mbx_info *mbx, const u32 *msg)
{
 u32 countdown = mbx->timeout;
 s32 err;

 switch (mbx->state) {
 case 129:
 case 128:
  return FM10K_MBX_ERR_NO_MBX;
 default:
  break;
 }


 err = fm10k_fifo_enqueue(&mbx->tx, msg);


 while (err && countdown) {
  countdown--;
  udelay(mbx->udelay);
  mbx->ops.process(hw, mbx);
  err = fm10k_fifo_enqueue(&mbx->tx, msg);
 }


 if (err) {
  mbx->timeout = 0;
  mbx->tx_busy++;
 }





 if (!mbx->tail_len)
  mbx->ops.process(hw, mbx);

 return 0;
}
