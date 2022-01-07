
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {scalar_t__ enet_id; } ;


 int ENET_CFGSSQMIFPQASSOC_ADDR ;
 int ENET_CFGSSQMIWQASSOC_ADDR ;
 scalar_t__ XGENE_ENET1 ;
 int xgene_enet_wr_ring_if (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_enet_config_ring_if_assoc(struct xgene_enet_pdata *p)
{
 u32 val;

 val = (p->enet_id == XGENE_ENET1) ? 0xffffffff : 0;
 xgene_enet_wr_ring_if(p, ENET_CFGSSQMIWQASSOC_ADDR, val);
 xgene_enet_wr_ring_if(p, ENET_CFGSSQMIFPQASSOC_ADDR, val);
}
