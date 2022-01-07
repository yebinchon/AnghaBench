
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_mmc_host {TYPE_2__* cfg; int clk_output; int clk_sample; int mmc; scalar_t__ use_new_timings; } ;
struct mmc_ios {scalar_t__ timing; scalar_t__ bus_width; } ;
struct TYPE_4__ {TYPE_1__* clk_delays; } ;
struct TYPE_3__ {int output; int sample; } ;


 int EINVAL ;
 scalar_t__ MMC_BUS_WIDTH_8 ;
 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 int SDXC_CLK_25M ;
 int SDXC_CLK_400K ;
 int SDXC_CLK_50M ;
 int SDXC_CLK_50M_DDR ;
 int SDXC_CLK_50M_DDR_8BIT ;
 int clk_set_phase (int ,int ) ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;

__attribute__((used)) static int sunxi_mmc_clk_set_phase(struct sunxi_mmc_host *host,
       struct mmc_ios *ios, u32 rate)
{
 int index;


 if (host->use_new_timings)
  return 0;


 if (!host->cfg->clk_delays)
  return 0;


 if (rate <= 400000) {
  index = SDXC_CLK_400K;
 } else if (rate <= 25000000) {
  index = SDXC_CLK_25M;
 } else if (rate <= 52000000) {
  if (ios->timing != MMC_TIMING_UHS_DDR50 &&
      ios->timing != MMC_TIMING_MMC_DDR52) {
   index = SDXC_CLK_50M;
  } else if (ios->bus_width == MMC_BUS_WIDTH_8) {
   index = SDXC_CLK_50M_DDR_8BIT;
  } else {
   index = SDXC_CLK_50M_DDR;
  }
 } else {
  dev_dbg(mmc_dev(host->mmc), "Invalid clock... returning\n");
  return -EINVAL;
 }

 clk_set_phase(host->clk_sample, host->cfg->clk_delays[index].sample);
 clk_set_phase(host->clk_output, host->cfg->clk_delays[index].output);

 return 0;
}
