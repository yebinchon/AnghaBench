
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int write_count; scalar_t__ empty_read_count; } ;


 int __efx_nic_tx_is_empty (struct efx_tx_queue*,unsigned int) ;

__attribute__((used)) static inline bool efx_nic_may_push_tx_desc(struct efx_tx_queue *tx_queue,
         unsigned int write_count)
{
 bool was_empty = __efx_nic_tx_is_empty(tx_queue, write_count);

 tx_queue->empty_read_count = 0;
 return was_empty && tx_queue->write_count - write_count == 1;
}
