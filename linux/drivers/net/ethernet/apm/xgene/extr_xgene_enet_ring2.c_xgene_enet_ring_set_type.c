
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_desc_ring {int id; int * state; } ;


 int BUFPOOL_MODE ;
 int RINGMODE ;
 int RING_BUFPOOL ;
 int RING_REGULAR ;
 int SET_VAL (int ,int ) ;
 int X2_RINGTYPE ;
 int xgene_enet_is_bufpool (int ) ;

__attribute__((used)) static void xgene_enet_ring_set_type(struct xgene_enet_desc_ring *ring)
{
 u32 *ring_cfg = ring->state;
 bool is_bufpool;
 u32 val;

 is_bufpool = xgene_enet_is_bufpool(ring->id);
 val = (is_bufpool) ? RING_BUFPOOL : RING_REGULAR;
 ring_cfg[4] |= SET_VAL(X2_RINGTYPE, val);
 if (is_bufpool)
  ring_cfg[3] |= SET_VAL(RINGMODE, BUFPOOL_MODE);
}
