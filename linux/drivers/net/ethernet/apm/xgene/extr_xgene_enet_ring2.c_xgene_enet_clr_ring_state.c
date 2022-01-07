
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_desc_ring {int state; } ;


 int memset (int ,int ,int) ;
 int xgene_enet_write_ring_state (struct xgene_enet_desc_ring*) ;

__attribute__((used)) static void xgene_enet_clr_ring_state(struct xgene_enet_desc_ring *ring)
{
 memset(ring->state, 0, sizeof(ring->state));
 xgene_enet_write_ring_state(ring);
}
