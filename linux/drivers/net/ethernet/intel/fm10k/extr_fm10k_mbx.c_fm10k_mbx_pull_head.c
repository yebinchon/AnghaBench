
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {int dummy; } ;
struct fm10k_mbx_info {scalar_t__ pulled; scalar_t__ tail_len; scalar_t__ mbmem_len; int tx_dwords; int tx_messages; int tail; struct fm10k_mbx_fifo tx; } ;
struct fm10k_hw {int dummy; } ;


 scalar_t__ fm10k_fifo_head_drop (struct fm10k_mbx_fifo*) ;
 scalar_t__ fm10k_fifo_head_len (struct fm10k_mbx_fifo*) ;
 scalar_t__ fm10k_fifo_used (struct fm10k_mbx_fifo*) ;
 scalar_t__ fm10k_mbx_index_len (struct fm10k_mbx_info*,scalar_t__,int ) ;
 int fm10k_mbx_tail_add (struct fm10k_mbx_info*,scalar_t__) ;
 int fm10k_mbx_write_copy (struct fm10k_hw*,struct fm10k_mbx_info*) ;

__attribute__((used)) static void fm10k_mbx_pull_head(struct fm10k_hw *hw,
    struct fm10k_mbx_info *mbx, u16 head)
{
 u16 mbmem_len, len, ack = fm10k_mbx_index_len(mbx, head, mbx->tail);
 struct fm10k_mbx_fifo *fifo = &mbx->tx;


 mbx->pulled += mbx->tail_len - ack;


 mbmem_len = mbx->mbmem_len - 1;
 len = fm10k_fifo_used(fifo) - mbx->pulled;
 if (len > mbmem_len)
  len = mbmem_len;


 mbx->tail = fm10k_mbx_tail_add(mbx, len - ack);
 mbx->tail_len = len;


 for (len = fm10k_fifo_head_len(fifo);
      len && (mbx->pulled >= len);
      len = fm10k_fifo_head_len(fifo)) {
  mbx->pulled -= fm10k_fifo_head_drop(fifo);
  mbx->tx_messages++;
  mbx->tx_dwords += len;
 }


 fm10k_mbx_write_copy(hw, mbx);
}
