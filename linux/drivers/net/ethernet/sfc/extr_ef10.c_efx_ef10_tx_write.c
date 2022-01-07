
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int write_count; int xmit_more_available; unsigned int insert_count; unsigned int ptr_mask; unsigned int packet_write_count; int pushes; struct efx_tx_buffer* buffer; } ;
struct efx_tx_buffer {int flags; int dma_addr; int len; int option; } ;
typedef int efx_qword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_QWORD_3 (int ,int ,int,int ,int ,int ,int ) ;
 int EFX_QWORD_FIELD (int ,int ) ;
 int EFX_TX_BUF_CONT ;
 int EFX_TX_BUF_OPTION ;
 int ESF_DZ_TX_KER_BUF_ADDR ;
 int ESF_DZ_TX_KER_BYTE_CNT ;
 int ESF_DZ_TX_KER_CONT ;
 int ESF_DZ_TX_OPTION_TYPE ;
 int efx_ef10_notify_tx_desc (struct efx_tx_queue*) ;
 int efx_ef10_push_tx_desc (struct efx_tx_queue*,int *) ;
 scalar_t__ efx_nic_may_push_tx_desc (struct efx_tx_queue*,unsigned int) ;
 int * efx_tx_desc (struct efx_tx_queue*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static void efx_ef10_tx_write(struct efx_tx_queue *tx_queue)
{
 unsigned int old_write_count = tx_queue->write_count;
 struct efx_tx_buffer *buffer;
 unsigned int write_ptr;
 efx_qword_t *txd;

 tx_queue->xmit_more_available = 0;
 if (unlikely(tx_queue->write_count == tx_queue->insert_count))
  return;

 do {
  write_ptr = tx_queue->write_count & tx_queue->ptr_mask;
  buffer = &tx_queue->buffer[write_ptr];
  txd = efx_tx_desc(tx_queue, write_ptr);
  ++tx_queue->write_count;


  if (buffer->flags & EFX_TX_BUF_OPTION) {
   *txd = buffer->option;
   if (EFX_QWORD_FIELD(*txd, ESF_DZ_TX_OPTION_TYPE) == 1)

    tx_queue->packet_write_count = tx_queue->write_count;
  } else {
   tx_queue->packet_write_count = tx_queue->write_count;
   BUILD_BUG_ON(EFX_TX_BUF_CONT != 1);
   EFX_POPULATE_QWORD_3(
    *txd,
    ESF_DZ_TX_KER_CONT,
    buffer->flags & EFX_TX_BUF_CONT,
    ESF_DZ_TX_KER_BYTE_CNT, buffer->len,
    ESF_DZ_TX_KER_BUF_ADDR, buffer->dma_addr);
  }
 } while (tx_queue->write_count != tx_queue->insert_count);

 wmb();

 if (efx_nic_may_push_tx_desc(tx_queue, old_write_count)) {
  txd = efx_tx_desc(tx_queue,
      old_write_count & tx_queue->ptr_mask);
  efx_ef10_push_tx_desc(tx_queue, txd);
  ++tx_queue->pushes;
 } else {
  efx_ef10_notify_tx_desc(tx_queue);
 }
}
