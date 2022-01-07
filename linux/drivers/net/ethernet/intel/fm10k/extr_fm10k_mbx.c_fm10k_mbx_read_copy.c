
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_fifo {int* buffer; int size; } ;
struct fm10k_mbx_info {int mbmem_reg; int mbmem_len; int head_len; int rx_mbmem_pushed; int pushed; struct fm10k_mbx_fifo rx; } ;
struct fm10k_hw {int dummy; } ;


 int fm10k_fifo_tail_offset (struct fm10k_mbx_fifo*,int ) ;
 int fm10k_mbx_head_sub (struct fm10k_mbx_info*,int) ;
 int fm10k_read_reg (struct fm10k_hw*,int) ;
 int wmb () ;

__attribute__((used)) static void fm10k_mbx_read_copy(struct fm10k_hw *hw,
    struct fm10k_mbx_info *mbx)
{
 struct fm10k_mbx_fifo *fifo = &mbx->rx;
 u32 mbmem = mbx->mbmem_reg ^ mbx->mbmem_len;
 u32 *tail = fifo->buffer;
 u16 end, len, head;


 len = mbx->head_len;
 head = fm10k_mbx_head_sub(mbx, len);
 if (head >= mbx->mbmem_len)
  head++;


 end = fm10k_fifo_tail_offset(fifo, mbx->pushed);
 tail += end;


 for (end = fifo->size - end; len; tail = fifo->buffer) {
  do {

   head &= mbx->mbmem_len - 1;
   if (!head)
    head++;

   mbx->rx_mbmem_pushed++;


   *(tail++) = fm10k_read_reg(hw, mbmem + head++);
  } while (--len && --end);
 }


 wmb();
}
