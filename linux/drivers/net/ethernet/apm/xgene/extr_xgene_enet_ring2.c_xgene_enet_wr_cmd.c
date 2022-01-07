
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_desc_ring {int id; int cmd; } ;


 int GENMASK (int,int ) ;
 int INTR_CLEAR ;
 int RING_BUFNUM_MASK ;
 scalar_t__ RING_OWNER_CPU ;
 int SET_VAL (int ,int) ;
 int X2_INTLINE ;
 int iowrite32 (int,int ) ;
 scalar_t__ xgene_enet_ring_owner (int) ;

__attribute__((used)) static void xgene_enet_wr_cmd(struct xgene_enet_desc_ring *ring, int count)
{
 u32 data = 0;

 if (xgene_enet_ring_owner(ring->id) == RING_OWNER_CPU) {
  data = SET_VAL(X2_INTLINE, ring->id & RING_BUFNUM_MASK) |
         INTR_CLEAR;
 }
 data |= (count & GENMASK(16, 0));

 iowrite32(data, ring->cmd);
}
