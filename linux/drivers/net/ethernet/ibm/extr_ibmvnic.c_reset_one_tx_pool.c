
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_tx_pool {int num_buffers; int* free_map; scalar_t__ producer_index; scalar_t__ consumer_index; int tx_buff; int long_term_buff; } ;
struct ibmvnic_tx_buff {int dummy; } ;
struct ibmvnic_adapter {int dummy; } ;


 int memset (int ,int ,int) ;
 int reset_long_term_buff (struct ibmvnic_adapter*,int *) ;

__attribute__((used)) static int reset_one_tx_pool(struct ibmvnic_adapter *adapter,
        struct ibmvnic_tx_pool *tx_pool)
{
 int rc, i;

 rc = reset_long_term_buff(adapter, &tx_pool->long_term_buff);
 if (rc)
  return rc;

 memset(tx_pool->tx_buff, 0,
        tx_pool->num_buffers *
        sizeof(struct ibmvnic_tx_buff));

 for (i = 0; i < tx_pool->num_buffers; i++)
  tx_pool->free_map[i] = i;

 tx_pool->consumer_index = 0;
 tx_pool->producer_index = 0;

 return 0;
}
