
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aspeed_smc_controller {scalar_t__ regs; int dev; } ;
struct aspeed_smc_chip {struct aspeed_smc_controller* controller; } ;


 scalar_t__ CONFIG_REG ;
 int aspeed_smc_chip_write_bit (struct aspeed_smc_chip*) ;
 int dev_dbg (int ,char*,scalar_t__,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void aspeed_smc_chip_check_config(struct aspeed_smc_chip *chip)
{
 struct aspeed_smc_controller *controller = chip->controller;
 u32 reg;

 reg = readl(controller->regs + CONFIG_REG);

 if (reg & aspeed_smc_chip_write_bit(chip))
  return;

 dev_dbg(controller->dev, "config write is not set ! @%p: 0x%08x\n",
  controller->regs + CONFIG_REG, reg);
 reg |= aspeed_smc_chip_write_bit(chip);
 writel(reg, controller->regs + CONFIG_REG);
}
