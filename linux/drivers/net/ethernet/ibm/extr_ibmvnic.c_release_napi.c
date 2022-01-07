
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int num_active_rx_napi; int napi_enabled; int * napi; int netdev; } ;


 int kfree (int *) ;
 int netdev_dbg (int ,char*,int) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void release_napi(struct ibmvnic_adapter *adapter)
{
 int i;

 if (!adapter->napi)
  return;

 for (i = 0; i < adapter->num_active_rx_napi; i++) {
  netdev_dbg(adapter->netdev, "Releasing napi[%d]\n", i);
  netif_napi_del(&adapter->napi[i]);
 }

 kfree(adapter->napi);
 adapter->napi = ((void*)0);
 adapter->num_active_rx_napi = 0;
 adapter->napi_enabled = 0;
}
