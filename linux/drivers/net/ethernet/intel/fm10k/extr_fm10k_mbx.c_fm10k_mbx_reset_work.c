
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ head; scalar_t__ tail; scalar_t__ size; } ;
struct fm10k_mbx_info {scalar_t__ pulled; scalar_t__ tail_len; TYPE_1__ rx; scalar_t__ head_len; scalar_t__ pushed; int tx_dropped; int tx; int tail; int mbx_hdr; scalar_t__ max_size; } ;


 scalar_t__ FM10K_MSG_HDR_FIELD_GET (int ,int ) ;
 int HEAD ;
 scalar_t__ fm10k_fifo_head_drop (int *) ;
 scalar_t__ fm10k_fifo_head_len (int *) ;
 scalar_t__ fm10k_mbx_index_len (struct fm10k_mbx_info*,scalar_t__,int ) ;

__attribute__((used)) static void fm10k_mbx_reset_work(struct fm10k_mbx_info *mbx)
{
 u16 len, head, ack;


 mbx->max_size = mbx->rx.size - 1;


 head = FM10K_MSG_HDR_FIELD_GET(mbx->mbx_hdr, HEAD);
 ack = fm10k_mbx_index_len(mbx, head, mbx->tail);
 mbx->pulled += mbx->tail_len - ack;


 while (fm10k_fifo_head_len(&mbx->tx) && mbx->pulled) {
  len = fm10k_fifo_head_drop(&mbx->tx);
  mbx->tx_dropped++;
  if (mbx->pulled >= len)
   mbx->pulled -= len;
  else
   mbx->pulled = 0;
 }


 mbx->pushed = 0;
 mbx->pulled = 0;
 mbx->tail_len = 0;
 mbx->head_len = 0;
 mbx->rx.tail = 0;
 mbx->rx.head = 0;
}
