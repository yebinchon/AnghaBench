
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_mmc_host {scalar_t__ use_new_timings; int clk_mmc; TYPE_1__* cfg; struct mmc_host* mmc; } ;
struct mmc_ios {int clock; scalar_t__ timing; scalar_t__ bus_width; } ;
struct mmc_host {long actual_clock; } ;
struct TYPE_2__ {scalar_t__ ccu_has_timings_switch; } ;


 scalar_t__ MMC_BUS_WIDTH_8 ;
 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 int REG_CLKCR ;
 int REG_SD_NTSR ;
 int SDXC_2X_TIMING_MODE ;
 int SDXC_REG_SAMP_DL_REG ;
 long clk_round_rate (int ,int) ;
 int clk_set_rate (int ,long) ;
 int dev_dbg (int ,char*,int,long) ;
 int dev_err (int ,char*,...) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_readl (struct sunxi_mmc_host*,int ) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int) ;
 int sunxi_ccu_set_mmc_timing_mode (int ,int) ;
 int sunxi_mmc_calibrate (struct sunxi_mmc_host*,int ) ;
 int sunxi_mmc_clk_set_phase (struct sunxi_mmc_host*,struct mmc_ios*,long) ;
 int sunxi_mmc_oclk_onoff (struct sunxi_mmc_host*,int) ;

__attribute__((used)) static int sunxi_mmc_clk_set_rate(struct sunxi_mmc_host *host,
      struct mmc_ios *ios)
{
 struct mmc_host *mmc = host->mmc;
 long rate;
 u32 rval, clock = ios->clock, div = 1;
 int ret;

 ret = sunxi_mmc_oclk_onoff(host, 0);
 if (ret)
  return ret;


 mmc->actual_clock = 0;

 if (!ios->clock)
  return 0;
 if (ios->timing == MMC_TIMING_MMC_DDR52 &&
     (host->use_new_timings ||
      ios->bus_width == MMC_BUS_WIDTH_8)) {
  div = 2;
  clock <<= 1;
 }

 if (host->use_new_timings && host->cfg->ccu_has_timings_switch) {
  ret = sunxi_ccu_set_mmc_timing_mode(host->clk_mmc, 1);
  if (ret) {
   dev_err(mmc_dev(mmc),
    "error setting new timing mode\n");
   return ret;
  }
 }

 rate = clk_round_rate(host->clk_mmc, clock);
 if (rate < 0) {
  dev_err(mmc_dev(mmc), "error rounding clk to %d: %ld\n",
   clock, rate);
  return rate;
 }
 dev_dbg(mmc_dev(mmc), "setting clk to %d, rounded %ld\n",
  clock, rate);


 ret = clk_set_rate(host->clk_mmc, rate);
 if (ret) {
  dev_err(mmc_dev(mmc), "error setting clk to %ld: %d\n",
   rate, ret);
  return ret;
 }


 rval = mmc_readl(host, REG_CLKCR);
 rval &= ~0xff;
 rval |= div - 1;
 mmc_writel(host, REG_CLKCR, rval);


 rate /= div;







 if (host->use_new_timings) {

  rval = mmc_readl(host, REG_SD_NTSR);
  rval |= SDXC_2X_TIMING_MODE;
  mmc_writel(host, REG_SD_NTSR, rval);
 }


 ret = sunxi_mmc_clk_set_phase(host, ios, rate);
 if (ret)
  return ret;

 ret = sunxi_mmc_calibrate(host, SDXC_REG_SAMP_DL_REG);
 if (ret)
  return ret;
 ret = sunxi_mmc_oclk_onoff(host, 1);
 if (ret)
  return ret;


 mmc->actual_clock = rate;

 return 0;
}
