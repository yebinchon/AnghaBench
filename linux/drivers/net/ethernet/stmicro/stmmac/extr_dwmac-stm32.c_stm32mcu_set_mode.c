
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_dwmac {TYPE_1__* ops; int regmap; int mode_reg; } ;
struct plat_stmmacenet_data {int interface; struct stm32_dwmac* bsp_priv; } ;
struct TYPE_2__ {int syscfg_eth_mask; } ;


 int EINVAL ;


 int SYSCFG_MCU_ETH_SEL_MII ;
 int SYSCFG_MCU_ETH_SEL_RMII ;
 int pr_debug (char*,...) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int stm32mcu_set_mode(struct plat_stmmacenet_data *plat_dat)
{
 struct stm32_dwmac *dwmac = plat_dat->bsp_priv;
 u32 reg = dwmac->mode_reg;
 int val;

 switch (plat_dat->interface) {
 case 129:
  val = SYSCFG_MCU_ETH_SEL_MII;
  pr_debug("SYSCFG init : PHY_INTERFACE_MODE_MII\n");
  break;
 case 128:
  val = SYSCFG_MCU_ETH_SEL_RMII;
  pr_debug("SYSCFG init : PHY_INTERFACE_MODE_RMII\n");
  break;
 default:
  pr_debug("SYSCFG init :  Do not manage %d interface\n",
    plat_dat->interface);

  return -EINVAL;
 }

 return regmap_update_bits(dwmac->regmap, reg,
     dwmac->ops->syscfg_eth_mask, val << 23);
}
