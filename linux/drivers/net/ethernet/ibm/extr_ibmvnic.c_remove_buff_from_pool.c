
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_rx_pool {int* free_map; size_t next_alloc; int size; int available; struct ibmvnic_rx_buff* rx_buff; } ;
struct ibmvnic_rx_buff {size_t pool_index; int * skb; } ;
struct ibmvnic_adapter {struct ibmvnic_rx_pool* rx_pool; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void remove_buff_from_pool(struct ibmvnic_adapter *adapter,
      struct ibmvnic_rx_buff *rx_buff)
{
 struct ibmvnic_rx_pool *pool = &adapter->rx_pool[rx_buff->pool_index];

 rx_buff->skb = ((void*)0);

 pool->free_map[pool->next_alloc] = (int)(rx_buff - pool->rx_buff);
 pool->next_alloc = (pool->next_alloc + 1) % pool->size;

 atomic_dec(&pool->available);
}
