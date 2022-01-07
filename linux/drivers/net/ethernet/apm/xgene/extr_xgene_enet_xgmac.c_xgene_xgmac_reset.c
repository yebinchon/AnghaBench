
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int dummy; } ;


 int AXGMAC_CONFIG_0 ;
 int HSTMACRST ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_xgmac_reset(struct xgene_enet_pdata *pdata)
{
 xgene_enet_wr_mac(pdata, AXGMAC_CONFIG_0, HSTMACRST);
 xgene_enet_wr_mac(pdata, AXGMAC_CONFIG_0, 0);
}
