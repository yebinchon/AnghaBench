
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_rds_ring {int * rx_buf_arr; } ;
struct qlcnic_adapter {int max_rds_rings; struct qlcnic_recv_context* recv_ctx; } ;


 int kfree (struct qlcnic_host_rds_ring*) ;
 int vfree (int *) ;

void qlcnic_free_sw_resources(struct qlcnic_adapter *adapter)
{
 struct qlcnic_recv_context *recv_ctx;
 struct qlcnic_host_rds_ring *rds_ring;
 int ring;

 recv_ctx = adapter->recv_ctx;

 if (recv_ctx->rds_rings == ((void*)0))
  return;

 for (ring = 0; ring < adapter->max_rds_rings; ring++) {
  rds_ring = &recv_ctx->rds_rings[ring];
  vfree(rds_ring->rx_buf_arr);
  rds_ring->rx_buf_arr = ((void*)0);
 }
 kfree(recv_ctx->rds_rings);
}
