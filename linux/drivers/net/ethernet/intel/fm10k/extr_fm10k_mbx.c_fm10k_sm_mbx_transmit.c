
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {int * buffer; } ;
struct fm10k_mbx_info {scalar_t__ mbmem_len; scalar_t__ tail; scalar_t__ tail_len; struct fm10k_mbx_fifo tx; } ;
struct fm10k_hw {int dummy; } ;


 scalar_t__ FM10K_TLV_DWORD_LEN (int ) ;
 int fm10k_fifo_head_offset (struct fm10k_mbx_fifo*,scalar_t__) ;
 int fm10k_mbx_pull_head (struct fm10k_hw*,struct fm10k_mbx_info*,scalar_t__) ;
 scalar_t__ fm10k_mbx_tail_sub (struct fm10k_mbx_info*,scalar_t__) ;

__attribute__((used)) static void fm10k_sm_mbx_transmit(struct fm10k_hw *hw,
      struct fm10k_mbx_info *mbx, u16 head)
{
 struct fm10k_mbx_fifo *fifo = &mbx->tx;

 u16 mbmem_len = mbx->mbmem_len - 1;
 u16 tail_len, len = 0;


 if (mbx->tail < head)
  head += mbmem_len;

 fm10k_mbx_pull_head(hw, mbx, head);


 do {
  u32 *msg;

  msg = fifo->buffer + fm10k_fifo_head_offset(fifo, len);
  tail_len = len;
  len += FM10K_TLV_DWORD_LEN(*msg);
 } while ((len <= mbx->tail_len) && (len < mbmem_len));


 if (mbx->tail_len > tail_len) {
  mbx->tail = fm10k_mbx_tail_sub(mbx, mbx->tail_len - tail_len);
  mbx->tail_len = tail_len;
 }


 if (mbx->tail > mbmem_len)
  mbx->tail -= mbmem_len;
}
