
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int ENET_CFGSSQMIFPQASSOC_ADDR ;
 int ENET_CFGSSQMIQMLITEFPQASSOC_ADDR ;
 int ENET_CFGSSQMIQMLITEWQASSOC_ADDR ;
 int ENET_CFGSSQMIWQASSOC_ADDR ;
 int xgene_enet_wr_ring_if (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_enet_config_ring_if_assoc(struct xgene_enet_pdata *pdata)
{
 u32 val = 0xffffffff;

 xgene_enet_wr_ring_if(pdata, ENET_CFGSSQMIWQASSOC_ADDR, val);
 xgene_enet_wr_ring_if(pdata, ENET_CFGSSQMIFPQASSOC_ADDR, val);
 xgene_enet_wr_ring_if(pdata, ENET_CFGSSQMIQMLITEWQASSOC_ADDR, val);
 xgene_enet_wr_ring_if(pdata, ENET_CFGSSQMIQMLITEFPQASSOC_ADDR, val);
}
