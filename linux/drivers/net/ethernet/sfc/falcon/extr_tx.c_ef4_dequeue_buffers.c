
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {unsigned int ptr_mask; unsigned int read_count; int queue; struct ef4_tx_buffer* buffer; struct ef4_nic* efx; } ;
struct ef4_tx_buffer {int flags; scalar_t__ len; } ;
struct ef4_nic {int net_dev; } ;


 int EF4_TX_BUF_OPTION ;
 int RESET_TYPE_TX_SKIP ;
 int ef4_dequeue_buffer (struct ef4_tx_queue*,struct ef4_tx_buffer*,unsigned int*,unsigned int*) ;
 int ef4_schedule_reset (struct ef4_nic*,int ) ;
 int netif_err (struct ef4_nic*,int ,int ,char*,int ,unsigned int) ;
 int tx_err ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ef4_dequeue_buffers(struct ef4_tx_queue *tx_queue,
    unsigned int index,
    unsigned int *pkts_compl,
    unsigned int *bytes_compl)
{
 struct ef4_nic *efx = tx_queue->efx;
 unsigned int stop_index, read_ptr;

 stop_index = (index + 1) & tx_queue->ptr_mask;
 read_ptr = tx_queue->read_count & tx_queue->ptr_mask;

 while (read_ptr != stop_index) {
  struct ef4_tx_buffer *buffer = &tx_queue->buffer[read_ptr];

  if (!(buffer->flags & EF4_TX_BUF_OPTION) &&
      unlikely(buffer->len == 0)) {
   netif_err(efx, tx_err, efx->net_dev,
      "TX queue %d spurious TX completion id %x\n",
      tx_queue->queue, read_ptr);
   ef4_schedule_reset(efx, RESET_TYPE_TX_SKIP);
   return;
  }

  ef4_dequeue_buffer(tx_queue, buffer, pkts_compl, bytes_compl);

  ++tx_queue->read_count;
  read_ptr = tx_queue->read_count & tx_queue->ptr_mask;
 }
}
