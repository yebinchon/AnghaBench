
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; } ;
struct qlcnic_host_tx_ring {int napi; } ;
struct qlcnic_host_sds_ring {int napi; } ;
struct qlcnic_adapter {int drv_sds_rings; int drv_tx_rings; struct qlcnic_host_tx_ring* tx_ring; TYPE_1__* ahw; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_2__ {int diag_test; } ;


 int netif_napi_del (int *) ;
 scalar_t__ qlcnic_check_multi_tx (struct qlcnic_adapter*) ;
 int qlcnic_free_sds_rings (struct qlcnic_recv_context*) ;
 int qlcnic_free_tx_rings (struct qlcnic_adapter*) ;

void qlcnic_82xx_napi_del(struct qlcnic_adapter *adapter)
{
 int ring;
 struct qlcnic_host_sds_ring *sds_ring;
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
 struct qlcnic_host_tx_ring *tx_ring;

 for (ring = 0; ring < adapter->drv_sds_rings; ring++) {
  sds_ring = &recv_ctx->sds_rings[ring];
  netif_napi_del(&sds_ring->napi);
 }

 qlcnic_free_sds_rings(adapter->recv_ctx);

 if (qlcnic_check_multi_tx(adapter) && !adapter->ahw->diag_test) {
  for (ring = 0; ring < adapter->drv_tx_rings; ring++) {
   tx_ring = &adapter->tx_ring[ring];
   netif_napi_del(&tx_ring->napi);
  }
 }

 qlcnic_free_tx_rings(adapter);
}
