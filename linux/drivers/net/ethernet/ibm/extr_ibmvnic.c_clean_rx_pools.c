
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ibmvnic_rx_pool {struct ibmvnic_rx_buff* rx_buff; } ;
struct ibmvnic_rx_buff {int * skb; } ;
struct ibmvnic_adapter {int num_active_rx_pools; int req_rx_add_entries_per_subcrq; int netdev; struct ibmvnic_rx_pool* rx_pool; } ;


 int dev_kfree_skb_any (int *) ;
 int netdev_dbg (int ,char*,int) ;

__attribute__((used)) static void clean_rx_pools(struct ibmvnic_adapter *adapter)
{
 struct ibmvnic_rx_pool *rx_pool;
 struct ibmvnic_rx_buff *rx_buff;
 u64 rx_entries;
 int rx_scrqs;
 int i, j;

 if (!adapter->rx_pool)
  return;

 rx_scrqs = adapter->num_active_rx_pools;
 rx_entries = adapter->req_rx_add_entries_per_subcrq;


 for (i = 0; i < rx_scrqs; i++) {
  rx_pool = &adapter->rx_pool[i];
  if (!rx_pool || !rx_pool->rx_buff)
   continue;

  netdev_dbg(adapter->netdev, "Cleaning rx_pool[%d]\n", i);
  for (j = 0; j < rx_entries; j++) {
   rx_buff = &rx_pool->rx_buff[j];
   if (rx_buff && rx_buff->skb) {
    dev_kfree_skb_any(rx_buff->skb);
    rx_buff->skb = ((void*)0);
   }
  }
 }
}
