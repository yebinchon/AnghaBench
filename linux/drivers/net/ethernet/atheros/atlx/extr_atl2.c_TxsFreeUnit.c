
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl2_adapter {int txs_next_clear; int txs_ring_size; int txs_write_ptr; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int TxsFreeUnit(struct atl2_adapter *adapter)
{
 u32 txs_write_ptr = (u32) atomic_read(&adapter->txs_write_ptr);

 return (adapter->txs_next_clear >= txs_write_ptr) ?
  (int) (adapter->txs_ring_size - adapter->txs_next_clear +
  txs_write_ptr - 1) :
  (int) (txs_write_ptr - adapter->txs_next_clear - 1);
}
