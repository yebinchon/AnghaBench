
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {TYPE_1__* ring_ops; } ;
struct xgene_enet_desc_ring {int * state; int num; int ndev; } ;
struct TYPE_2__ {int num_ring_config; } ;


 scalar_t__ CSR_RING_CONFIG ;
 scalar_t__ CSR_RING_WR_BASE ;
 struct xgene_enet_pdata* netdev_priv (int ) ;
 int xgene_enet_ring_wr32 (struct xgene_enet_desc_ring*,scalar_t__,int ) ;

__attribute__((used)) static void xgene_enet_write_ring_state(struct xgene_enet_desc_ring *ring)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ring->ndev);
 int i;

 xgene_enet_ring_wr32(ring, CSR_RING_CONFIG, ring->num);
 for (i = 0; i < pdata->ring_ops->num_ring_config; i++) {
  xgene_enet_ring_wr32(ring, CSR_RING_WR_BASE + (i * 4),
         ring->state[i]);
 }
}
