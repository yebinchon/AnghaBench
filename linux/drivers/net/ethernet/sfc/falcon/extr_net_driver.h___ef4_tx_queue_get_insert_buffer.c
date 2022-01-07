
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {struct ef4_tx_buffer* buffer; } ;
struct ef4_tx_buffer {int dummy; } ;


 size_t ef4_tx_queue_get_insert_index (struct ef4_tx_queue const*) ;

__attribute__((used)) static inline struct ef4_tx_buffer *
__ef4_tx_queue_get_insert_buffer(const struct ef4_tx_queue *tx_queue)
{
 return &tx_queue->buffer[ef4_tx_queue_get_insert_index(tx_queue)];
}
