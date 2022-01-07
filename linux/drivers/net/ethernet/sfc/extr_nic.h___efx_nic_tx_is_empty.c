
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int empty_read_count; } ;


 unsigned int EFX_EMPTY_COUNT_VALID ;
 unsigned int READ_ONCE (int ) ;

__attribute__((used)) static inline bool __efx_nic_tx_is_empty(struct efx_tx_queue *tx_queue,
      unsigned int write_count)
{
 unsigned int empty_read_count = READ_ONCE(tx_queue->empty_read_count);

 if (empty_read_count == 0)
  return 0;

 return ((empty_read_count ^ write_count) & ~EFX_EMPTY_COUNT_VALID) == 0;
}
