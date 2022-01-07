
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int PCS_CONTROL_1 ;
 int PCS_CTRL_PCS_RST ;
 int xgene_enet_rd_pcs (struct xgene_enet_pdata*,int ,int*) ;
 int xgene_enet_wr_pcs (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_pcs_reset(struct xgene_enet_pdata *pdata)
{
 u32 data;

 if (!xgene_enet_rd_pcs(pdata, PCS_CONTROL_1, &data))
  return;

 xgene_enet_wr_pcs(pdata, PCS_CONTROL_1, data | PCS_CTRL_PCS_RST);
 xgene_enet_wr_pcs(pdata, PCS_CONTROL_1, data & ~PCS_CTRL_PCS_RST);
}
