
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int dummy; } ;


 int MAC_CONFIG_1_ADDR ;
 int SOFT_RESET1 ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_gmac_reset(struct xgene_enet_pdata *pdata)
{
 xgene_enet_wr_mac(pdata, MAC_CONFIG_1_ADDR, SOFT_RESET1);
 xgene_enet_wr_mac(pdata, MAC_CONFIG_1_ADDR, 0);
}
