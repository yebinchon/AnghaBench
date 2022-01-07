
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {scalar_t__* buffer; scalar_t__ size; } ;
struct fm10k_mbx_info {int tx_mbmem_pulled; int pulled; scalar_t__ tail_len; scalar_t__ mbmem_len; scalar_t__ mbmem_reg; struct fm10k_mbx_fifo tx; } ;
struct fm10k_hw {int dummy; } ;


 scalar_t__ fm10k_fifo_head_offset (struct fm10k_mbx_fifo*,int ) ;
 scalar_t__ fm10k_mbx_tail_sub (struct fm10k_mbx_info*,scalar_t__) ;
 int fm10k_write_reg (struct fm10k_hw*,scalar_t__,int ) ;
 int rmb () ;

__attribute__((used)) static void fm10k_mbx_write_copy(struct fm10k_hw *hw,
     struct fm10k_mbx_info *mbx)
{
 struct fm10k_mbx_fifo *fifo = &mbx->tx;
 u32 mbmem = mbx->mbmem_reg;
 u32 *head = fifo->buffer;
 u16 end, len, tail, mask;

 if (!mbx->tail_len)
  return;


 mask = mbx->mbmem_len - 1;
 len = mbx->tail_len;
 tail = fm10k_mbx_tail_sub(mbx, len);
 if (tail > mask)
  tail++;


 end = fm10k_fifo_head_offset(fifo, mbx->pulled);
 head += end;


 rmb();


 for (end = fifo->size - end; len; head = fifo->buffer) {
  do {

   tail &= mask;
   if (!tail)
    tail++;

   mbx->tx_mbmem_pulled++;


   fm10k_write_reg(hw, mbmem + tail++, *(head++));
  } while (--len && --end);
 }
}
