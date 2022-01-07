
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;
struct ibmvnic_adapter {int req_rx_queues; int num_active_rx_napi; int * napi; int netdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NAPI_POLL_WEIGHT ;
 int ibmvnic_poll ;
 int * kcalloc (int,int,int ) ;
 int netdev_dbg (int ,char*,int) ;
 int netif_napi_add (int ,int *,int ,int ) ;

__attribute__((used)) static int init_napi(struct ibmvnic_adapter *adapter)
{
 int i;

 adapter->napi = kcalloc(adapter->req_rx_queues,
    sizeof(struct napi_struct), GFP_KERNEL);
 if (!adapter->napi)
  return -ENOMEM;

 for (i = 0; i < adapter->req_rx_queues; i++) {
  netdev_dbg(adapter->netdev, "Adding napi[%d]\n", i);
  netif_napi_add(adapter->netdev, &adapter->napi[i],
          ibmvnic_poll, NAPI_POLL_WEIGHT);
 }

 adapter->num_active_rx_napi = adapter->req_rx_queues;
 return 0;
}
