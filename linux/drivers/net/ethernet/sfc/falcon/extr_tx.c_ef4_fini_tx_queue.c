
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_tx_queue {size_t read_count; size_t write_count; size_t ptr_mask; int xmit_more_available; int core_txq; struct ef4_tx_buffer* buffer; int queue; TYPE_1__* efx; } ;
struct ef4_tx_buffer {int dummy; } ;
struct TYPE_2__ {int net_dev; } ;


 int drv ;
 int ef4_dequeue_buffer (struct ef4_tx_queue*,struct ef4_tx_buffer*,unsigned int*,unsigned int*) ;
 int netdev_tx_reset_queue (int ) ;
 int netif_dbg (TYPE_1__*,int ,int ,char*,int ) ;

void ef4_fini_tx_queue(struct ef4_tx_queue *tx_queue)
{
 struct ef4_tx_buffer *buffer;

 netif_dbg(tx_queue->efx, drv, tx_queue->efx->net_dev,
    "shutting down TX queue %d\n", tx_queue->queue);

 if (!tx_queue->buffer)
  return;


 while (tx_queue->read_count != tx_queue->write_count) {
  unsigned int pkts_compl = 0, bytes_compl = 0;
  buffer = &tx_queue->buffer[tx_queue->read_count & tx_queue->ptr_mask];
  ef4_dequeue_buffer(tx_queue, buffer, &pkts_compl, &bytes_compl);

  ++tx_queue->read_count;
 }
 tx_queue->xmit_more_available = 0;
 netdev_tx_reset_queue(tx_queue->core_txq);
}
