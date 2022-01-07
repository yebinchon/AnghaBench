
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_desc_ring {int dummy; } ;


 int xgene_enet_clr_desc_ring_id (struct xgene_enet_desc_ring*) ;
 int xgene_enet_clr_ring_state (struct xgene_enet_desc_ring*) ;

__attribute__((used)) static void xgene_enet_clear_ring(struct xgene_enet_desc_ring *ring)
{
 xgene_enet_clr_desc_ring_id(ring);
 xgene_enet_clr_ring_state(ring);
}
