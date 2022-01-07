
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_mdio_pdata {int dummy; } ;


 int MAC_CONFIG_1_ADDR ;
 int SOFT_RESET ;
 int xgene_mdio_wr_mac (struct xgene_mdio_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_gmac_reset(struct xgene_mdio_pdata *pdata)
{
 xgene_mdio_wr_mac(pdata, MAC_CONFIG_1_ADDR, SOFT_RESET);
 xgene_mdio_wr_mac(pdata, MAC_CONFIG_1_ADDR, 0);
}
