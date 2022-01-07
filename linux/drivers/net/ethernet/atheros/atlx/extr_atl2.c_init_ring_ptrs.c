
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl2_adapter {scalar_t__ txs_next_clear; int txs_write_ptr; scalar_t__ rxd_write_ptr; scalar_t__ rxd_read_ptr; int txd_read_ptr; scalar_t__ txd_write_ptr; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void init_ring_ptrs(struct atl2_adapter *adapter)
{

 adapter->txd_write_ptr = 0;
 atomic_set(&adapter->txd_read_ptr, 0);

 adapter->rxd_read_ptr = 0;
 adapter->rxd_write_ptr = 0;

 atomic_set(&adapter->txs_write_ptr, 0);
 adapter->txs_next_clear = 0;
}
