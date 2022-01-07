
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {scalar_t__ head; scalar_t__ tail; scalar_t__ buffer; } ;
struct fm10k_mbx_info {int pushed; int rx_parse_err; int msg_data; struct fm10k_mbx_fifo rx; } ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;


 int fm10k_fifo_empty (struct fm10k_mbx_fifo*) ;
 int fm10k_fifo_head_drop (struct fm10k_mbx_fifo*) ;
 int fm10k_tlv_msg_parse (struct fm10k_hw*,scalar_t__,struct fm10k_mbx_info*,int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static u16 fm10k_mbx_dequeue_rx(struct fm10k_hw *hw,
    struct fm10k_mbx_info *mbx)
{
 struct fm10k_mbx_fifo *fifo = &mbx->rx;
 s32 err;
 u16 cnt;


 for (cnt = 0; !fm10k_fifo_empty(fifo); cnt++) {
  err = fm10k_tlv_msg_parse(hw, fifo->buffer + fifo->head,
       mbx, mbx->msg_data);
  if (err < 0)
   mbx->rx_parse_err++;

  fm10k_fifo_head_drop(fifo);
 }


 memmove(fifo->buffer, fifo->buffer + fifo->tail, mbx->pushed << 2);


 fifo->tail -= fifo->head;
 fifo->head = 0;

 return cnt;
}
