
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct xgene_enet_desc_ring {size_t size; size_t slots; int id; int * raw_desc; } ;


 size_t BIT (scalar_t__) ;
 int CSR_RING_NE_INT_MODE ;
 scalar_t__ RING_OWNER_CPU ;
 int xgene_enet_clr_ring_state (struct xgene_enet_desc_ring*) ;
 size_t xgene_enet_get_numslots (int ,size_t) ;
 int xgene_enet_is_bufpool (int ) ;
 int xgene_enet_mark_desc_slot_empty (int *) ;
 scalar_t__ xgene_enet_ring_bufnum (int ) ;
 scalar_t__ xgene_enet_ring_owner (int ) ;
 int xgene_enet_ring_rd32 (struct xgene_enet_desc_ring*,int ,size_t*) ;
 int xgene_enet_ring_wr32 (struct xgene_enet_desc_ring*,int ,size_t) ;
 int xgene_enet_set_ring_id (struct xgene_enet_desc_ring*) ;
 int xgene_enet_set_ring_state (struct xgene_enet_desc_ring*) ;

__attribute__((used)) static struct xgene_enet_desc_ring *xgene_enet_setup_ring(
        struct xgene_enet_desc_ring *ring)
{
 u32 size = ring->size;
 u32 i, data;
 bool is_bufpool;

 xgene_enet_clr_ring_state(ring);
 xgene_enet_set_ring_state(ring);
 xgene_enet_set_ring_id(ring);

 ring->slots = xgene_enet_get_numslots(ring->id, size);

 is_bufpool = xgene_enet_is_bufpool(ring->id);
 if (is_bufpool || xgene_enet_ring_owner(ring->id) != RING_OWNER_CPU)
  return ring;

 for (i = 0; i < ring->slots; i++)
  xgene_enet_mark_desc_slot_empty(&ring->raw_desc[i]);

 xgene_enet_ring_rd32(ring, CSR_RING_NE_INT_MODE, &data);
 data |= BIT(31 - xgene_enet_ring_bufnum(ring->id));
 xgene_enet_ring_wr32(ring, CSR_RING_NE_INT_MODE, data);

 return ring;
}
