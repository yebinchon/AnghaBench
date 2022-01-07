
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_info {scalar_t__ mbmem_len; scalar_t__ head; scalar_t__ pushed; } ;
struct fm10k_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int fm10k_mbx_dequeue_rx (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_head_sub (struct fm10k_mbx_info*,scalar_t__) ;
 scalar_t__ fm10k_mbx_push_tail (struct fm10k_hw*,struct fm10k_mbx_info*,scalar_t__) ;

__attribute__((used)) static s32 fm10k_sm_mbx_receive(struct fm10k_hw *hw,
    struct fm10k_mbx_info *mbx,
    u16 tail)
{

 u16 mbmem_len = mbx->mbmem_len - 1;
 s32 err;


 if (tail < mbx->head)
  tail += mbmem_len;


 err = fm10k_mbx_push_tail(hw, mbx, tail);
 if (err < 0)
  return err;


 fm10k_mbx_dequeue_rx(hw, mbx);


 mbx->head = fm10k_mbx_head_sub(mbx, mbx->pushed);
 mbx->pushed = 0;


 if (mbx->head > mbmem_len)
  mbx->head -= mbmem_len;

 return err;
}
