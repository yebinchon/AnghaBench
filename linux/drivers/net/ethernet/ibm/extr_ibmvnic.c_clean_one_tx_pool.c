
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ibmvnic_tx_pool {int num_buffers; struct ibmvnic_tx_buff* tx_buff; } ;
struct ibmvnic_tx_buff {int * skb; } ;
struct ibmvnic_adapter {int dummy; } ;


 int dev_kfree_skb_any (int *) ;

__attribute__((used)) static void clean_one_tx_pool(struct ibmvnic_adapter *adapter,
         struct ibmvnic_tx_pool *tx_pool)
{
 struct ibmvnic_tx_buff *tx_buff;
 u64 tx_entries;
 int i;

 if (!tx_pool || !tx_pool->tx_buff)
  return;

 tx_entries = tx_pool->num_buffers;

 for (i = 0; i < tx_entries; i++) {
  tx_buff = &tx_pool->tx_buff[i];
  if (tx_buff && tx_buff->skb) {
   dev_kfree_skb_any(tx_buff->skb);
   tx_buff->skb = ((void*)0);
  }
 }
}
