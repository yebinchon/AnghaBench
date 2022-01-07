
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {unsigned short vdd; unsigned long clock; int bus_width; int power_mode; } ;
struct TYPE_2__ {int vmmc; } ;
struct mmc_host {TYPE_1__ supply; int actual_clock; } ;
struct meson_mx_mmc_host {scalar_t__ error; int cfg_div_clk; } ;


 scalar_t__ EINVAL ;
 int IS_ERR (int ) ;
 int MESON_MX_SDIO_CONF ;
 int MESON_MX_SDIO_CONF_BUS_WIDTH ;





 int clk_get_rate (int ) ;
 scalar_t__ clk_set_rate (int ,unsigned long) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,unsigned long,scalar_t__) ;
 int meson_mx_mmc_mask_bits (struct mmc_host*,int ,int ,int ) ;
 int mmc_dev (struct mmc_host*) ;
 struct meson_mx_mmc_host* mmc_priv (struct mmc_host*) ;
 scalar_t__ mmc_regulator_set_ocr (struct mmc_host*,int ,unsigned short) ;

__attribute__((used)) static void meson_mx_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct meson_mx_mmc_host *host = mmc_priv(mmc);
 unsigned short vdd = ios->vdd;
 unsigned long clk_rate = ios->clock;

 switch (ios->bus_width) {
 case 132:
  meson_mx_mmc_mask_bits(mmc, MESON_MX_SDIO_CONF,
           MESON_MX_SDIO_CONF_BUS_WIDTH, 0);
  break;

 case 131:
  meson_mx_mmc_mask_bits(mmc, MESON_MX_SDIO_CONF,
           MESON_MX_SDIO_CONF_BUS_WIDTH,
           MESON_MX_SDIO_CONF_BUS_WIDTH);
  break;

 case 130:
 default:
  dev_err(mmc_dev(mmc), "unsupported bus width: %d\n",
   ios->bus_width);
  host->error = -EINVAL;
  return;
 }

 host->error = clk_set_rate(host->cfg_div_clk, ios->clock);
 if (host->error) {
  dev_warn(mmc_dev(mmc),
    "failed to set MMC clock to %lu: %d\n",
    clk_rate, host->error);
  return;
 }

 mmc->actual_clock = clk_get_rate(host->cfg_div_clk);

 switch (ios->power_mode) {
 case 129:
  vdd = 0;

 case 128:
  if (!IS_ERR(mmc->supply.vmmc)) {
   host->error = mmc_regulator_set_ocr(mmc,
           mmc->supply.vmmc,
           vdd);
   if (host->error)
    return;
  }
  break;
 }
}
