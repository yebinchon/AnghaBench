
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {scalar_t__ insert_count; scalar_t__ write_count; } ;
struct ef4_tx_buffer {int dummy; } ;


 struct ef4_tx_buffer* __ef4_tx_queue_get_insert_buffer (struct ef4_tx_queue*) ;
 int ef4_dequeue_buffer (struct ef4_tx_queue*,struct ef4_tx_buffer*,int *,int *) ;

__attribute__((used)) static void ef4_enqueue_unwind(struct ef4_tx_queue *tx_queue)
{
 struct ef4_tx_buffer *buffer;


 while (tx_queue->insert_count != tx_queue->write_count) {
  --tx_queue->insert_count;
  buffer = __ef4_tx_queue_get_insert_buffer(tx_queue);
  ef4_dequeue_buffer(tx_queue, buffer, ((void*)0), ((void*)0));
 }
}
