
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct ibmvnic_rx_pool {int buff_size; int size; int* free_map; int active; scalar_t__ next_free; scalar_t__ next_alloc; int available; int rx_buff; int long_term_buff; } ;
struct ibmvnic_rx_buff {int dummy; } ;
struct ibmvnic_adapter {int netdev; struct ibmvnic_rx_pool* rx_pool; TYPE_1__* login_rsp_buf; } ;
struct TYPE_2__ {int num_rxadd_subcrqs; int off_rxadd_buff_size; } ;


 int alloc_long_term_buff (struct ibmvnic_adapter*,int *,int) ;
 int atomic_set (int *,int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int free_long_term_buff (struct ibmvnic_adapter*,int *) ;
 int memset (int ,int ,int) ;
 int netdev_dbg (int ,char*,int) ;
 int reset_long_term_buff (struct ibmvnic_adapter*,int *) ;

__attribute__((used)) static int reset_rx_pools(struct ibmvnic_adapter *adapter)
{
 struct ibmvnic_rx_pool *rx_pool;
 int rx_scrqs;
 int i, j, rc;
 u64 *size_array;

 size_array = (u64 *)((u8 *)(adapter->login_rsp_buf) +
  be32_to_cpu(adapter->login_rsp_buf->off_rxadd_buff_size));

 rx_scrqs = be32_to_cpu(adapter->login_rsp_buf->num_rxadd_subcrqs);
 for (i = 0; i < rx_scrqs; i++) {
  rx_pool = &adapter->rx_pool[i];

  netdev_dbg(adapter->netdev, "Re-setting rx_pool[%d]\n", i);

  if (rx_pool->buff_size != be64_to_cpu(size_array[i])) {
   free_long_term_buff(adapter, &rx_pool->long_term_buff);
   rx_pool->buff_size = be64_to_cpu(size_array[i]);
   rc = alloc_long_term_buff(adapter,
        &rx_pool->long_term_buff,
        rx_pool->size *
        rx_pool->buff_size);
  } else {
   rc = reset_long_term_buff(adapter,
        &rx_pool->long_term_buff);
  }

  if (rc)
   return rc;

  for (j = 0; j < rx_pool->size; j++)
   rx_pool->free_map[j] = j;

  memset(rx_pool->rx_buff, 0,
         rx_pool->size * sizeof(struct ibmvnic_rx_buff));

  atomic_set(&rx_pool->available, 0);
  rx_pool->next_alloc = 0;
  rx_pool->next_free = 0;
  rx_pool->active = 1;
 }

 return 0;
}
