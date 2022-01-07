
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_tx_pool {int long_term_buff; int free_map; int tx_buff; } ;
struct ibmvnic_adapter {int dummy; } ;


 int free_long_term_buff (struct ibmvnic_adapter*,int *) ;
 int kfree (int ) ;

__attribute__((used)) static void release_one_tx_pool(struct ibmvnic_adapter *adapter,
    struct ibmvnic_tx_pool *tx_pool)
{
 kfree(tx_pool->tx_buff);
 kfree(tx_pool->free_map);
 free_long_term_buff(adapter, &tx_pool->long_term_buff);
}
