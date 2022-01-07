
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_desc_ring {int* state; } ;


 int CREATE_MASK (int,int ) ;
 int RECOMBBUF ;
 int RECOMTIMEOUTH_LEN ;
 int RECOMTIMEOUTH_POS ;
 int RECOMTIMEOUTL_LEN ;
 int RECOMTIMEOUTL_POS ;

__attribute__((used)) static void xgene_enet_ring_set_recombbuf(struct xgene_enet_desc_ring *ring)
{
 u32 *ring_cfg = ring->state;

 ring_cfg[3] |= RECOMBBUF;
 ring_cfg[3] |= (0xf << RECOMTIMEOUTL_POS) &
   CREATE_MASK(RECOMTIMEOUTL_POS, RECOMTIMEOUTL_LEN);
 ring_cfg[4] |= 0x7 & CREATE_MASK(RECOMTIMEOUTH_POS, RECOMTIMEOUTH_LEN);
}
