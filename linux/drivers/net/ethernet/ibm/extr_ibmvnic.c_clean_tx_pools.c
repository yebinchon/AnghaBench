
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int num_active_tx_pools; int * tso_pool; int * tx_pool; int netdev; } ;


 int clean_one_tx_pool (struct ibmvnic_adapter*,int *) ;
 int netdev_dbg (int ,char*,int) ;

__attribute__((used)) static void clean_tx_pools(struct ibmvnic_adapter *adapter)
{
 int tx_scrqs;
 int i;

 if (!adapter->tx_pool || !adapter->tso_pool)
  return;

 tx_scrqs = adapter->num_active_tx_pools;


 for (i = 0; i < tx_scrqs; i++) {
  netdev_dbg(adapter->netdev, "Cleaning tx_pool[%d]\n", i);
  clean_one_tx_pool(adapter, &adapter->tx_pool[i]);
  clean_one_tx_pool(adapter, &adapter->tso_pool[i]);
 }
}
