
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_napi {int qid; int * tx_ring; int * rx_ring; int napi; } ;
struct ena_adapter {int num_queues; int * tx_ring; int * rx_ring; struct ena_napi* ena_napi; int netdev; } ;


 int ENA_NAPI_BUDGET ;
 int ena_io_poll ;
 int netif_napi_add (int ,int *,int ,int ) ;

__attribute__((used)) static void ena_init_napi(struct ena_adapter *adapter)
{
 struct ena_napi *napi;
 int i;

 for (i = 0; i < adapter->num_queues; i++) {
  napi = &adapter->ena_napi[i];

  netif_napi_add(adapter->netdev,
          &adapter->ena_napi[i].napi,
          ena_io_poll,
          ENA_NAPI_BUDGET);
  napi->rx_ring = &adapter->rx_ring[i];
  napi->tx_ring = &adapter->tx_ring[i];
  napi->qid = i;
 }
}
