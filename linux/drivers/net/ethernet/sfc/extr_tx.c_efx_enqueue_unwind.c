
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int insert_count; } ;
struct efx_tx_buffer {int dummy; } ;


 struct efx_tx_buffer* __efx_tx_queue_get_insert_buffer (struct efx_tx_queue*) ;
 int efx_dequeue_buffer (struct efx_tx_queue*,struct efx_tx_buffer*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void efx_enqueue_unwind(struct efx_tx_queue *tx_queue,
          unsigned int insert_count)
{
 struct efx_tx_buffer *buffer;
 unsigned int bytes_compl = 0;
 unsigned int pkts_compl = 0;


 while (tx_queue->insert_count != insert_count) {
  --tx_queue->insert_count;
  buffer = __efx_tx_queue_get_insert_buffer(tx_queue);
  efx_dequeue_buffer(tx_queue, buffer, &pkts_compl, &bytes_compl);
 }
}
