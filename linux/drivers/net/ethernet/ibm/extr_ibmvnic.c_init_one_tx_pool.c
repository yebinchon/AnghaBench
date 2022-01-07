
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_tx_pool {int* free_map; int num_buffers; int buf_size; scalar_t__ producer_index; scalar_t__ consumer_index; int long_term_buff; void* tx_buff; } ;
struct ibmvnic_tx_buff {int dummy; } ;
struct ibmvnic_adapter {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ alloc_long_term_buff (struct ibmvnic_adapter*,int *,int) ;
 void* kcalloc (int,int,int ) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int init_one_tx_pool(struct net_device *netdev,
       struct ibmvnic_tx_pool *tx_pool,
       int num_entries, int buf_size)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 int i;

 tx_pool->tx_buff = kcalloc(num_entries,
       sizeof(struct ibmvnic_tx_buff),
       GFP_KERNEL);
 if (!tx_pool->tx_buff)
  return -1;

 if (alloc_long_term_buff(adapter, &tx_pool->long_term_buff,
     num_entries * buf_size))
  return -1;

 tx_pool->free_map = kcalloc(num_entries, sizeof(int), GFP_KERNEL);
 if (!tx_pool->free_map)
  return -1;

 for (i = 0; i < num_entries; i++)
  tx_pool->free_map[i] = i;

 tx_pool->consumer_index = 0;
 tx_pool->producer_index = 0;
 tx_pool->num_buffers = num_entries;
 tx_pool->buf_size = buf_size;

 return 0;
}
