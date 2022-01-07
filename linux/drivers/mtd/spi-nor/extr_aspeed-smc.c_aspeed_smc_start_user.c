
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_nor {struct aspeed_smc_chip* priv; } ;
struct aspeed_smc_chip {int* ctl_val; int ctl; } ;


 int CONTROL_CE_STOP_ACTIVE_CONTROL ;
 int CONTROL_COMMAND_MODE_USER ;
 int aspeed_smc_chip_check_config (struct aspeed_smc_chip*) ;
 size_t smc_base ;
 int writel (int,int ) ;

__attribute__((used)) static void aspeed_smc_start_user(struct spi_nor *nor)
{
 struct aspeed_smc_chip *chip = nor->priv;
 u32 ctl = chip->ctl_val[smc_base];





 aspeed_smc_chip_check_config(chip);

 ctl |= CONTROL_COMMAND_MODE_USER |
  CONTROL_CE_STOP_ACTIVE_CONTROL;
 writel(ctl, chip->ctl);

 ctl &= ~CONTROL_CE_STOP_ACTIVE_CONTROL;
 writel(ctl, chip->ctl);
}
