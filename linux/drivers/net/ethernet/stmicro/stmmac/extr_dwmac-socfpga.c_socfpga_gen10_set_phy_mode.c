
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tse_pcs_base; } ;
struct socfpga_dwmac {int reg_offset; int reg_shift; int dev; TYPE_1__ pcs; int stmmac_rst; int stmmac_ocp_rst; scalar_t__ f2h_ptp_ref_clk; scalar_t__ splitter_base; struct regmap* sys_mgr_base_addr; } ;
struct regmap {int dummy; } ;


 int EINVAL ;
 int PHY_INTERFACE_MODE_GMII ;
 int PHY_INTERFACE_MODE_MII ;
 int PHY_INTERFACE_MODE_SGMII ;
 int SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII ;
 int SYSMGR_EMACGRP_CTRL_PHYSEL_MASK ;
 int SYSMGR_FPGAINTF_EMAC_BIT ;
 int SYSMGR_FPGAINTF_EMAC_REG ;
 int SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK ;
 int dev_err (int ,char*) ;
 int regmap_read (struct regmap*,int,int*) ;
 int regmap_write (struct regmap*,int,int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int socfpga_get_plat_phymode (struct socfpga_dwmac*) ;
 scalar_t__ socfpga_set_phy_mode_common (int,int*) ;
 scalar_t__ tse_pcs_init (int ,TYPE_1__*) ;

__attribute__((used)) static int socfpga_gen10_set_phy_mode(struct socfpga_dwmac *dwmac)
{
 struct regmap *sys_mgr_base_addr = dwmac->sys_mgr_base_addr;
 int phymode = socfpga_get_plat_phymode(dwmac);
 u32 reg_offset = dwmac->reg_offset;
 u32 reg_shift = dwmac->reg_shift;
 u32 ctrl, val, module;

 if (socfpga_set_phy_mode_common(phymode, &val))
  return -EINVAL;





 if (dwmac->splitter_base)
  val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII;


 reset_control_assert(dwmac->stmmac_ocp_rst);
 reset_control_assert(dwmac->stmmac_rst);

 regmap_read(sys_mgr_base_addr, reg_offset, &ctrl);
 ctrl &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK);
 ctrl |= val;

 if (dwmac->f2h_ptp_ref_clk ||
     phymode == PHY_INTERFACE_MODE_MII ||
     phymode == PHY_INTERFACE_MODE_GMII ||
     phymode == PHY_INTERFACE_MODE_SGMII) {
  ctrl |= SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK;
  regmap_read(sys_mgr_base_addr, SYSMGR_FPGAINTF_EMAC_REG,
       &module);
  module |= (SYSMGR_FPGAINTF_EMAC_BIT << reg_shift);
  regmap_write(sys_mgr_base_addr, SYSMGR_FPGAINTF_EMAC_REG,
        module);
 } else {
  ctrl &= ~SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK;
 }

 regmap_write(sys_mgr_base_addr, reg_offset, ctrl);




 reset_control_deassert(dwmac->stmmac_ocp_rst);
 reset_control_deassert(dwmac->stmmac_rst);
 if (phymode == PHY_INTERFACE_MODE_SGMII) {
  if (tse_pcs_init(dwmac->pcs.tse_pcs_base, &dwmac->pcs) != 0) {
   dev_err(dwmac->dev, "Unable to initialize TSE PCS");
   return -EINVAL;
  }
 }
 return 0;
}
