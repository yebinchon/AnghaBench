
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int write_count; int xmit_more_available; unsigned int insert_count; unsigned int ptr_mask; int pushes; struct efx_tx_buffer* buffer; } ;
struct efx_tx_buffer {int flags; int dma_addr; int len; } ;
typedef int efx_qword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_QWORD_4 (int ,int ,int,int ,int ,int ,int ,int ,int ) ;
 int EFX_TX_BUF_CONT ;
 int EFX_TX_BUF_OPTION ;
 int EFX_WARN_ON_ONCE_PARANOID (int) ;
 int FSF_AZ_TX_KER_BUF_ADDR ;
 int FSF_AZ_TX_KER_BUF_REGION ;
 int FSF_AZ_TX_KER_BYTE_COUNT ;
 int FSF_AZ_TX_KER_CONT ;
 int efx_farch_notify_tx_desc (struct efx_tx_queue*) ;
 int efx_farch_push_tx_desc (struct efx_tx_queue*,int *) ;
 scalar_t__ efx_nic_may_push_tx_desc (struct efx_tx_queue*,unsigned int) ;
 int * efx_tx_desc (struct efx_tx_queue*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

void efx_farch_tx_write(struct efx_tx_queue *tx_queue)
{
 struct efx_tx_buffer *buffer;
 efx_qword_t *txd;
 unsigned write_ptr;
 unsigned old_write_count = tx_queue->write_count;

 tx_queue->xmit_more_available = 0;
 if (unlikely(tx_queue->write_count == tx_queue->insert_count))
  return;

 do {
  write_ptr = tx_queue->write_count & tx_queue->ptr_mask;
  buffer = &tx_queue->buffer[write_ptr];
  txd = efx_tx_desc(tx_queue, write_ptr);
  ++tx_queue->write_count;

  EFX_WARN_ON_ONCE_PARANOID(buffer->flags & EFX_TX_BUF_OPTION);


  BUILD_BUG_ON(EFX_TX_BUF_CONT != 1);
  EFX_POPULATE_QWORD_4(*txd,
         FSF_AZ_TX_KER_CONT,
         buffer->flags & EFX_TX_BUF_CONT,
         FSF_AZ_TX_KER_BYTE_COUNT, buffer->len,
         FSF_AZ_TX_KER_BUF_REGION, 0,
         FSF_AZ_TX_KER_BUF_ADDR, buffer->dma_addr);
 } while (tx_queue->write_count != tx_queue->insert_count);

 wmb();

 if (efx_nic_may_push_tx_desc(tx_queue, old_write_count)) {
  txd = efx_tx_desc(tx_queue,
      old_write_count & tx_queue->ptr_mask);
  efx_farch_push_tx_desc(tx_queue, txd);
  ++tx_queue->pushes;
 } else {
  efx_farch_notify_tx_desc(tx_queue);
 }
}
