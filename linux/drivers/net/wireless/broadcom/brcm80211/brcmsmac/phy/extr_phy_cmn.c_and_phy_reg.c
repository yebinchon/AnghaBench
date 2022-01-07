
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {scalar_t__ phy_wreg; int d11core; } ;


 int D11REGOFFS (int ) ;
 int bcma_mask16 (int ,int ,int ) ;
 int bcma_wflush16 (int ,int ,int ) ;
 int phyregaddr ;
 int phyregdata ;

void and_phy_reg(struct brcms_phy *pi, u16 addr, u16 val)
{
 bcma_wflush16(pi->d11core, D11REGOFFS(phyregaddr), addr);
 bcma_mask16(pi->d11core, D11REGOFFS(phyregdata), val);
 pi->phy_wreg = 0;
}
