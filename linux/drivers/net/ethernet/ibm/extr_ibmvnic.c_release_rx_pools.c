
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_rx_pool {int size; struct ibmvnic_rx_pool* rx_buff; int * skb; int long_term_buff; struct ibmvnic_rx_pool* free_map; } ;
struct ibmvnic_adapter {int num_active_rx_pools; struct ibmvnic_rx_pool* rx_pool; int netdev; } ;


 int dev_kfree_skb_any (int *) ;
 int free_long_term_buff (struct ibmvnic_adapter*,int *) ;
 int kfree (struct ibmvnic_rx_pool*) ;
 int netdev_dbg (int ,char*,int) ;

__attribute__((used)) static void release_rx_pools(struct ibmvnic_adapter *adapter)
{
 struct ibmvnic_rx_pool *rx_pool;
 int i, j;

 if (!adapter->rx_pool)
  return;

 for (i = 0; i < adapter->num_active_rx_pools; i++) {
  rx_pool = &adapter->rx_pool[i];

  netdev_dbg(adapter->netdev, "Releasing rx_pool[%d]\n", i);

  kfree(rx_pool->free_map);
  free_long_term_buff(adapter, &rx_pool->long_term_buff);

  if (!rx_pool->rx_buff)
   continue;

  for (j = 0; j < rx_pool->size; j++) {
   if (rx_pool->rx_buff[j].skb) {
    dev_kfree_skb_any(rx_pool->rx_buff[j].skb);
    rx_pool->rx_buff[j].skb = ((void*)0);
   }
  }

  kfree(rx_pool->rx_buff);
 }

 kfree(adapter->rx_pool);
 adapter->rx_pool = ((void*)0);
 adapter->num_active_rx_pools = 0;
}
