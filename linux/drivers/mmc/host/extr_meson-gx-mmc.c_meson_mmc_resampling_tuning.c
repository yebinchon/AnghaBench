
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {scalar_t__ doing_retune; } ;
struct meson_host {TYPE_1__* data; scalar_t__ regs; int mmc_clk; int mux_clk; } ;
struct TYPE_2__ {scalar_t__ adjust; } ;


 unsigned int ADJUST_ADJ_DELAY_MASK ;
 unsigned int ADJUST_ADJ_EN ;
 unsigned int DIV_ROUND_UP (int ,int ) ;
 int EIO ;
 int FIELD_GET (unsigned int,unsigned int) ;
 unsigned int FIELD_PREP (unsigned int,unsigned int) ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int meson_mmc_reset_resampling (struct meson_host*) ;
 int mmc_dev (struct mmc_host*) ;
 struct meson_host* mmc_priv (struct mmc_host*) ;
 int mmc_send_tuning (struct mmc_host*,int ,int *) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int meson_mmc_resampling_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct meson_host *host = mmc_priv(mmc);
 unsigned int val, dly, max_dly, i;
 int ret;


 max_dly = DIV_ROUND_UP(clk_get_rate(host->mux_clk),
          clk_get_rate(host->mmc_clk));

 val = readl(host->regs + host->data->adjust);
 val |= ADJUST_ADJ_EN;
 writel(val, host->regs + host->data->adjust);

 if (mmc->doing_retune)
  dly = FIELD_GET(ADJUST_ADJ_DELAY_MASK, val) + 1;
 else
  dly = 0;

 for (i = 0; i < max_dly; i++) {
  val &= ~ADJUST_ADJ_DELAY_MASK;
  val |= FIELD_PREP(ADJUST_ADJ_DELAY_MASK, (dly + i) % max_dly);
  writel(val, host->regs + host->data->adjust);

  ret = mmc_send_tuning(mmc, opcode, ((void*)0));
  if (!ret) {
   dev_dbg(mmc_dev(mmc), "resampling delay: %u\n",
    (dly + i) % max_dly);
   return 0;
  }
 }

 meson_mmc_reset_resampling(host);
 return -EIO;
}
