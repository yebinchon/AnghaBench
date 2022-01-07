
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int actual_clock; } ;
struct meson_host {int ddr; unsigned long req_rate; int dev; int mmc_clk; scalar_t__ regs; struct mmc_host* mmc; } ;


 int CFG_DDR ;
 int CFG_STOP_CLOCK ;
 scalar_t__ SD_EMMC_CFG ;
 int clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_dbg (int ,char*,unsigned long) ;
 int dev_err (int ,char*,unsigned long,int) ;
 int meson_mmc_clk_gate (struct meson_host*) ;
 int meson_mmc_clk_ungate (struct meson_host*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int meson_mmc_clk_set(struct meson_host *host, unsigned long rate,
        bool ddr)
{
 struct mmc_host *mmc = host->mmc;
 int ret;
 u32 cfg;


 if (host->ddr == ddr && host->req_rate == rate)
  return 0;


 meson_mmc_clk_gate(host);
 host->req_rate = 0;
 mmc->actual_clock = 0;


 if (!rate)
  return 0;


 cfg = readl(host->regs + SD_EMMC_CFG);
 cfg |= CFG_STOP_CLOCK;
 writel(cfg, host->regs + SD_EMMC_CFG);

 if (ddr) {

  rate <<= 1;
  cfg |= CFG_DDR;
 } else {
  cfg &= ~CFG_DDR;
 }
 writel(cfg, host->regs + SD_EMMC_CFG);
 host->ddr = ddr;

 ret = clk_set_rate(host->mmc_clk, rate);
 if (ret) {
  dev_err(host->dev, "Unable to set cfg_div_clk to %lu. ret=%d\n",
   rate, ret);
  return ret;
 }

 host->req_rate = rate;
 mmc->actual_clock = clk_get_rate(host->mmc_clk);


 if (ddr) {
  host->req_rate >>= 1;
  mmc->actual_clock >>= 1;
 }

 dev_dbg(host->dev, "clk rate: %u Hz\n", mmc->actual_clock);
 if (rate != mmc->actual_clock)
  dev_dbg(host->dev, "requested rate was %lu\n", rate);


 meson_mmc_clk_ungate(host);

 return 0;
}
