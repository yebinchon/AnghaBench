
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_desc_ring {int * state; } ;


 int RECOMBBUF ;
 int SET_VAL (int ,int) ;
 int X2_RECOMTIMEOUT ;

__attribute__((used)) static void xgene_enet_ring_set_recombbuf(struct xgene_enet_desc_ring *ring)
{
 u32 *ring_cfg = ring->state;

 ring_cfg[3] |= RECOMBBUF;
 ring_cfg[4] |= SET_VAL(X2_RECOMTIMEOUT, 0x7);
}
