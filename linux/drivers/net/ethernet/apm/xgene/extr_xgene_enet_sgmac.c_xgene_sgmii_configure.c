
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int dummy; } ;


 int INT_PHY_ADDR ;
 int SGMII_CONTROL_ADDR ;
 int SGMII_TBI_CONTROL_ADDR ;
 int xgene_mii_phy_write (struct xgene_enet_pdata*,int ,int,int) ;

__attribute__((used)) static void xgene_sgmii_configure(struct xgene_enet_pdata *p)
{
 xgene_mii_phy_write(p, INT_PHY_ADDR, SGMII_TBI_CONTROL_ADDR >> 2,
       0x8000);
 xgene_mii_phy_write(p, INT_PHY_ADDR, SGMII_CONTROL_ADDR >> 2, 0x9000);
 xgene_mii_phy_write(p, INT_PHY_ADDR, SGMII_TBI_CONTROL_ADDR >> 2, 0);
}
