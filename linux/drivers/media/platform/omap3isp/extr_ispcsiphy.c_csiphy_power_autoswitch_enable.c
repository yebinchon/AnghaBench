
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_csiphy {int cfg_regs; int isp; } ;


 int ISPCSI2_PHY_CFG ;
 int ISPCSI2_PHY_CFG_PWR_AUTO ;
 int isp_reg_clr_set (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void csiphy_power_autoswitch_enable(struct isp_csiphy *phy, bool enable)
{
 isp_reg_clr_set(phy->isp, phy->cfg_regs, ISPCSI2_PHY_CFG,
   ISPCSI2_PHY_CFG_PWR_AUTO,
   enable ? ISPCSI2_PHY_CFG_PWR_AUTO : 0);
}
