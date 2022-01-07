
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_sds_ring {int irq; } ;
struct netxen_recv_context {struct nx_host_sds_ring* sds_rings; } ;
struct netxen_adapter {int max_sds_rings; struct netxen_recv_context recv_ctx; } ;


 int free_irq (int ,struct nx_host_sds_ring*) ;

__attribute__((used)) static void
netxen_nic_free_irq(struct netxen_adapter *adapter)
{
 int ring;
 struct nx_host_sds_ring *sds_ring;

 struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;

 for (ring = 0; ring < adapter->max_sds_rings; ring++) {
  sds_ring = &recv_ctx->sds_rings[ring];
  free_irq(sds_ring->irq, sds_ring);
 }
}
