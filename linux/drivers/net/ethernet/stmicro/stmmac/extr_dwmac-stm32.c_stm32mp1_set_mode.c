
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stm32_dwmac {TYPE_1__* ops; int regmap; int eth_clk_sel_reg; int eth_ref_clk_sel_reg; scalar_t__ mode_reg; } ;
struct plat_stmmacenet_data {int interface; struct stm32_dwmac* bsp_priv; } ;
struct TYPE_2__ {int syscfg_eth_mask; } ;


 int EINVAL ;







 scalar_t__ SYSCFG_PMCCLRR_OFFSET ;
 int SYSCFG_PMCR_ETH_CLK_SEL ;
 int SYSCFG_PMCR_ETH_REF_CLK_SEL ;
 int SYSCFG_PMCR_ETH_SEL_GMII ;
 int SYSCFG_PMCR_ETH_SEL_MII ;
 int SYSCFG_PMCR_ETH_SEL_RGMII ;
 int SYSCFG_PMCR_ETH_SEL_RMII ;
 int pr_debug (char*,...) ;
 int regmap_update_bits (int ,scalar_t__,int ,int) ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static int stm32mp1_set_mode(struct plat_stmmacenet_data *plat_dat)
{
 struct stm32_dwmac *dwmac = plat_dat->bsp_priv;
 u32 reg = dwmac->mode_reg;
 int val, ret;

 switch (plat_dat->interface) {
 case 133:
  val = SYSCFG_PMCR_ETH_SEL_MII;
  pr_debug("SYSCFG init : PHY_INTERFACE_MODE_MII\n");
  break;
 case 134:
  val = SYSCFG_PMCR_ETH_SEL_GMII;
  if (dwmac->eth_clk_sel_reg)
   val |= SYSCFG_PMCR_ETH_CLK_SEL;
  pr_debug("SYSCFG init : PHY_INTERFACE_MODE_GMII\n");
  break;
 case 128:
  val = SYSCFG_PMCR_ETH_SEL_RMII;
  if (dwmac->eth_ref_clk_sel_reg)
   val |= SYSCFG_PMCR_ETH_REF_CLK_SEL;
  pr_debug("SYSCFG init : PHY_INTERFACE_MODE_RMII\n");
  break;
 case 132:
 case 131:
 case 130:
 case 129:
  val = SYSCFG_PMCR_ETH_SEL_RGMII;
  if (dwmac->eth_clk_sel_reg)
   val |= SYSCFG_PMCR_ETH_CLK_SEL;
  pr_debug("SYSCFG init : PHY_INTERFACE_MODE_RGMII\n");
  break;
 default:
  pr_debug("SYSCFG init :  Do not manage %d interface\n",
    plat_dat->interface);

  return -EINVAL;
 }


 ret = regmap_write(dwmac->regmap, reg + SYSCFG_PMCCLRR_OFFSET,
      dwmac->ops->syscfg_eth_mask);


 return regmap_update_bits(dwmac->regmap, reg,
     dwmac->ops->syscfg_eth_mask, val);
}
