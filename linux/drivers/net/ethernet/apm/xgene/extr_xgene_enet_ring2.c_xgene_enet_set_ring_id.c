
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_desc_ring {int id; int num; } ;


 int CSR_RING_ID ;
 int CSR_RING_ID_BUF ;
 int GENMASK (int,int) ;
 int IS_BUFFER_POOL ;
 int OVERWRITE ;
 int PREFETCH_BUF_EN ;
 scalar_t__ RING_OWNER_CPU ;
 int xgene_enet_is_bufpool (int) ;
 scalar_t__ xgene_enet_ring_owner (int) ;
 int xgene_enet_ring_wr32 (struct xgene_enet_desc_ring*,int ,int) ;

__attribute__((used)) static void xgene_enet_set_ring_id(struct xgene_enet_desc_ring *ring)
{
 u32 ring_id_val, ring_id_buf;
 bool is_bufpool;

 if (xgene_enet_ring_owner(ring->id) == RING_OWNER_CPU)
  return;

 is_bufpool = xgene_enet_is_bufpool(ring->id);

 ring_id_val = ring->id & GENMASK(9, 0);
 ring_id_val |= OVERWRITE;

 ring_id_buf = (ring->num << 9) & GENMASK(18, 9);
 ring_id_buf |= PREFETCH_BUF_EN;

 if (is_bufpool)
  ring_id_buf |= IS_BUFFER_POOL;

 xgene_enet_ring_wr32(ring, CSR_RING_ID, ring_id_val);
 xgene_enet_ring_wr32(ring, CSR_RING_ID_BUF, ring_id_buf);
}
