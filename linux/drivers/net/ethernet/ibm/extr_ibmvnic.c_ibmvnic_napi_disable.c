
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int napi_enabled; int req_rx_queues; int * napi; int netdev; } ;


 int napi_disable (int *) ;
 int netdev_dbg (int ,char*,int) ;

__attribute__((used)) static void ibmvnic_napi_disable(struct ibmvnic_adapter *adapter)
{
 int i;

 if (!adapter->napi_enabled)
  return;

 for (i = 0; i < adapter->req_rx_queues; i++) {
  netdev_dbg(adapter->netdev, "Disabling napi[%d]\n", i);
  napi_disable(&adapter->napi[i]);
 }

 adapter->napi_enabled = 0;
}
