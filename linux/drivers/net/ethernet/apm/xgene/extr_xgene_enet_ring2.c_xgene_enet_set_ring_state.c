
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_desc_ring {int id; } ;
typedef enum xgene_ring_owner { ____Placeholder_xgene_ring_owner } xgene_ring_owner ;


 int RING_OWNER_ETH0 ;
 int RING_OWNER_ETH1 ;
 int xgene_enet_ring_init (struct xgene_enet_desc_ring*) ;
 int xgene_enet_ring_owner (int ) ;
 int xgene_enet_ring_set_recombbuf (struct xgene_enet_desc_ring*) ;
 int xgene_enet_ring_set_type (struct xgene_enet_desc_ring*) ;
 int xgene_enet_write_ring_state (struct xgene_enet_desc_ring*) ;

__attribute__((used)) static void xgene_enet_set_ring_state(struct xgene_enet_desc_ring *ring)
{
 enum xgene_ring_owner owner;

 xgene_enet_ring_set_type(ring);

 owner = xgene_enet_ring_owner(ring->id);
 if (owner == RING_OWNER_ETH0 || owner == RING_OWNER_ETH1)
  xgene_enet_ring_set_recombbuf(ring);

 xgene_enet_ring_init(ring);
 xgene_enet_write_ring_state(ring);
}
