
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {unsigned int write_count; int xmit_more_available; unsigned int insert_count; unsigned int ptr_mask; int pushes; struct ef4_tx_buffer* buffer; } ;
struct ef4_tx_buffer {int flags; int dma_addr; int len; } ;
typedef int ef4_qword_t ;


 int BUILD_BUG_ON (int) ;
 int EF4_BUG_ON_PARANOID (int) ;
 int EF4_POPULATE_QWORD_4 (int ,int ,int,int ,int ,int ,int ,int ,int ) ;
 int EF4_TX_BUF_CONT ;
 int EF4_TX_BUF_OPTION ;
 int FSF_AZ_TX_KER_BUF_ADDR ;
 int FSF_AZ_TX_KER_BUF_REGION ;
 int FSF_AZ_TX_KER_BYTE_COUNT ;
 int FSF_AZ_TX_KER_CONT ;
 int ef4_farch_notify_tx_desc (struct ef4_tx_queue*) ;
 int ef4_farch_push_tx_desc (struct ef4_tx_queue*,int *) ;
 scalar_t__ ef4_nic_may_push_tx_desc (struct ef4_tx_queue*,unsigned int) ;
 int * ef4_tx_desc (struct ef4_tx_queue*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

void ef4_farch_tx_write(struct ef4_tx_queue *tx_queue)
{
 struct ef4_tx_buffer *buffer;
 ef4_qword_t *txd;
 unsigned write_ptr;
 unsigned old_write_count = tx_queue->write_count;

 tx_queue->xmit_more_available = 0;
 if (unlikely(tx_queue->write_count == tx_queue->insert_count))
  return;

 do {
  write_ptr = tx_queue->write_count & tx_queue->ptr_mask;
  buffer = &tx_queue->buffer[write_ptr];
  txd = ef4_tx_desc(tx_queue, write_ptr);
  ++tx_queue->write_count;

  EF4_BUG_ON_PARANOID(buffer->flags & EF4_TX_BUF_OPTION);


  BUILD_BUG_ON(EF4_TX_BUF_CONT != 1);
  EF4_POPULATE_QWORD_4(*txd,
         FSF_AZ_TX_KER_CONT,
         buffer->flags & EF4_TX_BUF_CONT,
         FSF_AZ_TX_KER_BYTE_COUNT, buffer->len,
         FSF_AZ_TX_KER_BUF_REGION, 0,
         FSF_AZ_TX_KER_BUF_ADDR, buffer->dma_addr);
 } while (tx_queue->write_count != tx_queue->insert_count);

 wmb();

 if (ef4_nic_may_push_tx_desc(tx_queue, old_write_count)) {
  txd = ef4_tx_desc(tx_queue,
      old_write_count & tx_queue->ptr_mask);
  ef4_farch_push_tx_desc(tx_queue, txd);
  ++tx_queue->pushes;
 } else {
  ef4_farch_notify_tx_desc(tx_queue);
 }
}
