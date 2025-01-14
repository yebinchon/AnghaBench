
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct isp_pipeline {int external_rate; int external_width; int external; } ;
struct TYPE_10__ {int pol; int pos; } ;
struct isp_csiphy_lanes_cfg {TYPE_5__ clk; TYPE_4__* data; } ;
struct isp_csiphy {unsigned int num_data_lanes; int cfg_regs; int isp; int phy_regs; int entity; } ;
struct TYPE_7__ {int phy_layer; struct isp_csiphy_lanes_cfg lanecfg; } ;
struct TYPE_6__ {unsigned int num_data_lanes; struct isp_csiphy_lanes_cfg lanecfg; } ;
struct TYPE_8__ {TYPE_2__ ccp2; TYPE_1__ csi2; } ;
struct isp_bus_cfg {scalar_t__ interface; TYPE_3__ bus; } ;
struct TYPE_9__ {int pol; int pos; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ISPCSI2_PHY_CFG ;
 int ISPCSI2_PHY_CFG_CLOCK_POL_MASK ;
 int ISPCSI2_PHY_CFG_CLOCK_POL_SHIFT ;
 int ISPCSI2_PHY_CFG_CLOCK_POSITION_MASK ;
 int ISPCSI2_PHY_CFG_CLOCK_POSITION_SHIFT ;
 int ISPCSI2_PHY_CFG_DATA_POL_MASK (unsigned int) ;
 int ISPCSI2_PHY_CFG_DATA_POL_SHIFT (unsigned int) ;
 int ISPCSI2_PHY_CFG_DATA_POSITION_MASK (unsigned int) ;
 int ISPCSI2_PHY_CFG_DATA_POSITION_SHIFT (unsigned int) ;
 int ISPCSIPHY_REG0 ;
 int ISPCSIPHY_REG0_THS_SETTLE_MASK ;
 int ISPCSIPHY_REG0_THS_SETTLE_SHIFT ;
 int ISPCSIPHY_REG0_THS_TERM_MASK ;
 int ISPCSIPHY_REG0_THS_TERM_SHIFT ;
 int ISPCSIPHY_REG1 ;
 int ISPCSIPHY_REG1_TCLK_MISS_MASK ;
 int ISPCSIPHY_REG1_TCLK_MISS_SHIFT ;
 int ISPCSIPHY_REG1_TCLK_SETTLE_MASK ;
 int ISPCSIPHY_REG1_TCLK_SETTLE_SHIFT ;
 int ISPCSIPHY_REG1_TCLK_TERM_MASK ;
 int ISPCSIPHY_REG1_TCLK_TERM_SHIFT ;
 scalar_t__ ISP_INTERFACE_CCP2B_PHY1 ;
 scalar_t__ ISP_INTERFACE_CCP2B_PHY2 ;
 int TCLK_MISS ;
 int TCLK_SETTLE ;
 int TCLK_TERM ;
 int csiphy_routing_cfg (struct isp_csiphy*,scalar_t__,int,int ) ;
 int hweight32 (unsigned int) ;
 int isp_reg_readl (int ,int ,int ) ;
 int isp_reg_writel (int ,int,int ,int ) ;
 struct isp_pipeline* to_isp_pipeline (int ) ;
 struct isp_bus_cfg* v4l2_subdev_to_bus_cfg (int ) ;

__attribute__((used)) static int omap3isp_csiphy_config(struct isp_csiphy *phy)
{
 struct isp_pipeline *pipe = to_isp_pipeline(phy->entity);
 struct isp_bus_cfg *buscfg = v4l2_subdev_to_bus_cfg(pipe->external);
 struct isp_csiphy_lanes_cfg *lanes;
 int csi2_ddrclk_khz;
 unsigned int num_data_lanes, used_lanes = 0;
 unsigned int i;
 u32 reg;

 if (buscfg->interface == ISP_INTERFACE_CCP2B_PHY1
     || buscfg->interface == ISP_INTERFACE_CCP2B_PHY2) {
  lanes = &buscfg->bus.ccp2.lanecfg;
  num_data_lanes = 1;
 } else {
  lanes = &buscfg->bus.csi2.lanecfg;
  num_data_lanes = buscfg->bus.csi2.num_data_lanes;
 }

 if (num_data_lanes > phy->num_data_lanes)
  return -EINVAL;


 for (i = 0; i < num_data_lanes; i++) {
  if (lanes->data[i].pol > 1 || lanes->data[i].pos > 3)
   return -EINVAL;

  if (used_lanes & (1 << lanes->data[i].pos))
   return -EINVAL;

  used_lanes |= 1 << lanes->data[i].pos;
 }

 if (lanes->clk.pol > 1 || lanes->clk.pos > 3)
  return -EINVAL;

 if (lanes->clk.pos == 0 || used_lanes & (1 << lanes->clk.pos))
  return -EINVAL;






 csiphy_routing_cfg(phy, buscfg->interface, 1,
      buscfg->bus.ccp2.phy_layer);



 csi2_ddrclk_khz = pipe->external_rate / 1000
  / (2 * hweight32(used_lanes)) * pipe->external_width;

 reg = isp_reg_readl(phy->isp, phy->phy_regs, ISPCSIPHY_REG0);

 reg &= ~(ISPCSIPHY_REG0_THS_TERM_MASK |
   ISPCSIPHY_REG0_THS_SETTLE_MASK);

 reg |= (DIV_ROUND_UP(25 * csi2_ddrclk_khz, 2000000) - 1)
  << ISPCSIPHY_REG0_THS_TERM_SHIFT;

 reg |= (DIV_ROUND_UP(90 * csi2_ddrclk_khz, 1000000) + 3)
  << ISPCSIPHY_REG0_THS_SETTLE_SHIFT;

 isp_reg_writel(phy->isp, reg, phy->phy_regs, ISPCSIPHY_REG0);

 reg = isp_reg_readl(phy->isp, phy->phy_regs, ISPCSIPHY_REG1);

 reg &= ~(ISPCSIPHY_REG1_TCLK_TERM_MASK |
   ISPCSIPHY_REG1_TCLK_MISS_MASK |
   ISPCSIPHY_REG1_TCLK_SETTLE_MASK);
 reg |= TCLK_TERM << ISPCSIPHY_REG1_TCLK_TERM_SHIFT;
 reg |= TCLK_MISS << ISPCSIPHY_REG1_TCLK_MISS_SHIFT;
 reg |= TCLK_SETTLE << ISPCSIPHY_REG1_TCLK_SETTLE_SHIFT;

 isp_reg_writel(phy->isp, reg, phy->phy_regs, ISPCSIPHY_REG1);


 reg = isp_reg_readl(phy->isp, phy->cfg_regs, ISPCSI2_PHY_CFG);

 for (i = 0; i < num_data_lanes; i++) {
  reg &= ~(ISPCSI2_PHY_CFG_DATA_POL_MASK(i + 1) |
    ISPCSI2_PHY_CFG_DATA_POSITION_MASK(i + 1));
  reg |= (lanes->data[i].pol <<
   ISPCSI2_PHY_CFG_DATA_POL_SHIFT(i + 1));
  reg |= (lanes->data[i].pos <<
   ISPCSI2_PHY_CFG_DATA_POSITION_SHIFT(i + 1));
 }

 reg &= ~(ISPCSI2_PHY_CFG_CLOCK_POL_MASK |
   ISPCSI2_PHY_CFG_CLOCK_POSITION_MASK);
 reg |= lanes->clk.pol << ISPCSI2_PHY_CFG_CLOCK_POL_SHIFT;
 reg |= lanes->clk.pos << ISPCSI2_PHY_CFG_CLOCK_POSITION_SHIFT;

 isp_reg_writel(phy->isp, reg, phy->cfg_regs, ISPCSI2_PHY_CFG);

 return 0;
}
