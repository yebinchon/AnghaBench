
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int XG_LINK_STATUS_ADDR ;
 int xgene_enet_rd_csr (struct xgene_enet_pdata*,int ,int *) ;

__attribute__((used)) static u32 xgene_enet_link_status(struct xgene_enet_pdata *pdata)
{
 u32 data;

 xgene_enet_rd_csr(pdata, XG_LINK_STATUS_ADDR, &data);

 return data;
}
