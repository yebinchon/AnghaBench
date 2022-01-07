
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;
struct xgene_enet_desc_ring {int id; } ;


 int BIT (int ) ;
 int ENET_CFGSSQMIFPRESET_ADDR ;
 int ENET_CFGSSQMIWQRESET_ADDR ;
 int xgene_enet_get_fpsel (int ) ;
 scalar_t__ xgene_enet_is_bufpool (int ) ;
 int xgene_enet_ring_bufnum (int ) ;
 int xgene_enet_wr_ring_if (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_enet_clear(struct xgene_enet_pdata *pdata,
        struct xgene_enet_desc_ring *ring)
{
 u32 addr, data;

 if (xgene_enet_is_bufpool(ring->id)) {
  addr = ENET_CFGSSQMIFPRESET_ADDR;
  data = BIT(xgene_enet_get_fpsel(ring->id));
 } else {
  addr = ENET_CFGSSQMIWQRESET_ADDR;
  data = BIT(xgene_enet_ring_bufnum(ring->id));
 }

 xgene_enet_wr_ring_if(pdata, addr, data);
}
