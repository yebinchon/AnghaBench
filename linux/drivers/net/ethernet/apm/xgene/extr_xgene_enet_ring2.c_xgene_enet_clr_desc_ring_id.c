
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_desc_ring {int id; } ;


 int CSR_RING_ID ;
 int CSR_RING_ID_BUF ;
 int OVERWRITE ;
 int xgene_enet_ring_wr32 (struct xgene_enet_desc_ring*,int ,int) ;

__attribute__((used)) static void xgene_enet_clr_desc_ring_id(struct xgene_enet_desc_ring *ring)
{
 u32 ring_id;

 ring_id = ring->id | OVERWRITE;
 xgene_enet_ring_wr32(ring, CSR_RING_ID, ring_id);
 xgene_enet_ring_wr32(ring, CSR_RING_ID_BUF, 0);
}
