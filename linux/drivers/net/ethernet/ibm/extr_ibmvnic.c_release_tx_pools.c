
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int num_active_tx_pools; int * tso_pool; int * tx_pool; } ;


 int kfree (int *) ;
 int release_one_tx_pool (struct ibmvnic_adapter*,int *) ;

__attribute__((used)) static void release_tx_pools(struct ibmvnic_adapter *adapter)
{
 int i;

 if (!adapter->tx_pool)
  return;

 for (i = 0; i < adapter->num_active_tx_pools; i++) {
  release_one_tx_pool(adapter, &adapter->tx_pool[i]);
  release_one_tx_pool(adapter, &adapter->tso_pool[i]);
 }

 kfree(adapter->tx_pool);
 adapter->tx_pool = ((void*)0);
 kfree(adapter->tso_pool);
 adapter->tso_pool = ((void*)0);
 adapter->num_active_tx_pools = 0;
}
