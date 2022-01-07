
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmveth_buff_pool {scalar_t__ threshold; int available; scalar_t__ active; } ;
struct ibmveth_adapter {struct ibmveth_buff_pool* rx_buff_pool; int replenish_task_cycles; } ;


 int IBMVETH_NUM_BUFF_POOLS ;
 scalar_t__ atomic_read (int *) ;
 int ibmveth_replenish_buffer_pool (struct ibmveth_adapter*,struct ibmveth_buff_pool*) ;
 int ibmveth_update_rx_no_buffer (struct ibmveth_adapter*) ;

__attribute__((used)) static void ibmveth_replenish_task(struct ibmveth_adapter *adapter)
{
 int i;

 adapter->replenish_task_cycles++;

 for (i = (IBMVETH_NUM_BUFF_POOLS - 1); i >= 0; i--) {
  struct ibmveth_buff_pool *pool = &adapter->rx_buff_pool[i];

  if (pool->active &&
      (atomic_read(&pool->available) < pool->threshold))
   ibmveth_replenish_buffer_pool(adapter, pool);
 }

 ibmveth_update_rx_no_buffer(adapter);
}
