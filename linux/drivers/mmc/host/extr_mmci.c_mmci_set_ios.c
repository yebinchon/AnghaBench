
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct variant_data {int pwrreg_powerup; int opendrain; scalar_t__ explicit_mclk_control; scalar_t__ pwrreg_clkgate; scalar_t__ signal_direction; } ;
struct mmci_host {int vqmmc_enabled; int pwr_reg_add; scalar_t__ clock_cache; int lock; TYPE_3__* ops; int clk; int mclk; struct mmc_host* mmc; struct variant_data* variant; int pins_default; int pinctrl; int pins_opendrain; TYPE_1__* plat; } ;
struct mmc_ios {int power_mode; scalar_t__ bus_width; scalar_t__ bus_mode; scalar_t__ clock; int vdd; } ;
struct TYPE_5__ {int vqmmc; int vmmc; } ;
struct mmc_host {TYPE_2__ supply; } ;
struct TYPE_6__ {int (* set_pwrreg ) (struct mmci_host*,int) ;int (* set_clkreg ) (struct mmci_host*,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ (* ios_handler ) (int ,struct mmc_ios*) ;} ;


 int IS_ERR (int ) ;
 int MCI_PWR_ON ;
 int MCI_ST_DATA2DIREN ;
 int MCI_ST_DATA31DIREN ;
 int MCI_ST_DATA74DIREN ;
 scalar_t__ MMC_BUSMODE_OPENDRAIN ;
 scalar_t__ MMC_BUS_WIDTH_1 ;
 scalar_t__ MMC_BUS_WIDTH_4 ;



 int clk_get_rate (int ) ;
 int clk_set_rate (int ,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int mmc_dev (struct mmc_host*) ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;
 int mmci_reg_delay (struct mmci_host*) ;
 int mmci_set_clkreg (struct mmci_host*,scalar_t__) ;
 int mmci_write_pwrreg (struct mmci_host*,int) ;
 int pinctrl_select_state (int ,int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (int ,struct mmc_ios*) ;
 int stub2 (struct mmci_host*,scalar_t__) ;
 int stub3 (struct mmci_host*,int) ;

__attribute__((used)) static void mmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mmci_host *host = mmc_priv(mmc);
 struct variant_data *variant = host->variant;
 u32 pwr = 0;
 unsigned long flags;
 int ret;

 if (host->plat->ios_handler &&
  host->plat->ios_handler(mmc_dev(mmc), ios))
   dev_err(mmc_dev(mmc), "platform ios_handler failed\n");

 switch (ios->power_mode) {
 case 130:
  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

  if (!IS_ERR(mmc->supply.vqmmc) && host->vqmmc_enabled) {
   regulator_disable(mmc->supply.vqmmc);
   host->vqmmc_enabled = 0;
  }

  break;
 case 128:
  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, ios->vdd);






  pwr |= variant->pwrreg_powerup;

  break;
 case 129:
  if (!IS_ERR(mmc->supply.vqmmc) && !host->vqmmc_enabled) {
   ret = regulator_enable(mmc->supply.vqmmc);
   if (ret < 0)
    dev_err(mmc_dev(mmc),
     "failed to enable vqmmc regulator\n");
   else
    host->vqmmc_enabled = 1;
  }

  pwr |= MCI_PWR_ON;
  break;
 }

 if (variant->signal_direction && ios->power_mode != 130) {





  pwr |= host->pwr_reg_add;

  if (ios->bus_width == MMC_BUS_WIDTH_4)
   pwr &= ~MCI_ST_DATA74DIREN;
  else if (ios->bus_width == MMC_BUS_WIDTH_1)
   pwr &= (~MCI_ST_DATA74DIREN &
    ~MCI_ST_DATA31DIREN &
    ~MCI_ST_DATA2DIREN);
 }

 if (variant->opendrain) {
  if (ios->bus_mode == MMC_BUSMODE_OPENDRAIN)
   pwr |= variant->opendrain;
 } else {




  if (ios->bus_mode == MMC_BUSMODE_OPENDRAIN)
   pinctrl_select_state(host->pinctrl, host->pins_opendrain);
  else
   pinctrl_select_state(host->pinctrl, host->pins_default);
 }





 if (!ios->clock && variant->pwrreg_clkgate)
  pwr &= ~MCI_PWR_ON;

 if (host->variant->explicit_mclk_control &&
     ios->clock != host->clock_cache) {
  ret = clk_set_rate(host->clk, ios->clock);
  if (ret < 0)
   dev_err(mmc_dev(host->mmc),
    "Error setting clock rate (%d)\n", ret);
  else
   host->mclk = clk_get_rate(host->clk);
 }
 host->clock_cache = ios->clock;

 spin_lock_irqsave(&host->lock, flags);

 if (host->ops && host->ops->set_clkreg)
  host->ops->set_clkreg(host, ios->clock);
 else
  mmci_set_clkreg(host, ios->clock);

 if (host->ops && host->ops->set_pwrreg)
  host->ops->set_pwrreg(host, pwr);
 else
  mmci_write_pwrreg(host, pwr);

 mmci_reg_delay(host);

 spin_unlock_irqrestore(&host->lock, flags);
}
