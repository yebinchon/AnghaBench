
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int insert_count; unsigned int ptr_mask; } ;



__attribute__((used)) static inline unsigned int
efx_tx_queue_get_insert_index(const struct efx_tx_queue *tx_queue)
{
 return tx_queue->insert_count & tx_queue->ptr_mask;
}
