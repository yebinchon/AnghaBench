
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_offset {scalar_t__ core_dll_status; scalar_t__ core_dll_config; scalar_t__ core_dll_config_2; scalar_t__ core_vendor_spec; } ;
struct sdhci_msm_host {scalar_t__ use_14lpp_dll_reset; int xo_clk; struct sdhci_msm_offset* offset; } ;
struct sdhci_host {int clock; int lock; scalar_t__ ioaddr; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;


 int CORE_CK_OUT_EN ;
 int CORE_CLK_PWRSAVE ;
 int CORE_DLL_CLOCK_DISABLE ;
 int CORE_DLL_EN ;
 int CORE_DLL_LOCK ;
 int CORE_DLL_PDN ;
 int CORE_DLL_RST ;
 int CORE_FLL_CYCLE_CNT ;
 int DIV_ROUND_CLOSEST_ULL (int,unsigned long) ;
 int ETIMEDOUT ;
 int IS_ERR_OR_NULL (int ) ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*,int ) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int msm_cm_dll_set_freq (struct sdhci_host*) ;
 int readl_relaxed (scalar_t__) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int msm_init_cm_dll(struct sdhci_host *host)
{
 struct mmc_host *mmc = host->mmc;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 int wait_cnt = 50;
 unsigned long flags, xo_clk = 0;
 u32 config;
 const struct sdhci_msm_offset *msm_offset =
     msm_host->offset;

 if (msm_host->use_14lpp_dll_reset && !IS_ERR_OR_NULL(msm_host->xo_clk))
  xo_clk = clk_get_rate(msm_host->xo_clk);

 spin_lock_irqsave(&host->lock, flags);






 config = readl_relaxed(host->ioaddr + msm_offset->core_vendor_spec);
 config &= ~CORE_CLK_PWRSAVE;
 writel_relaxed(config, host->ioaddr + msm_offset->core_vendor_spec);

 if (msm_host->use_14lpp_dll_reset) {
  config = readl_relaxed(host->ioaddr +
    msm_offset->core_dll_config);
  config &= ~CORE_CK_OUT_EN;
  writel_relaxed(config, host->ioaddr +
    msm_offset->core_dll_config);

  config = readl_relaxed(host->ioaddr +
    msm_offset->core_dll_config_2);
  config |= CORE_DLL_CLOCK_DISABLE;
  writel_relaxed(config, host->ioaddr +
    msm_offset->core_dll_config_2);
 }

 config = readl_relaxed(host->ioaddr +
   msm_offset->core_dll_config);
 config |= CORE_DLL_RST;
 writel_relaxed(config, host->ioaddr +
   msm_offset->core_dll_config);

 config = readl_relaxed(host->ioaddr +
   msm_offset->core_dll_config);
 config |= CORE_DLL_PDN;
 writel_relaxed(config, host->ioaddr +
   msm_offset->core_dll_config);
 msm_cm_dll_set_freq(host);

 if (msm_host->use_14lpp_dll_reset &&
     !IS_ERR_OR_NULL(msm_host->xo_clk)) {
  u32 mclk_freq = 0;

  config = readl_relaxed(host->ioaddr +
    msm_offset->core_dll_config_2);
  config &= CORE_FLL_CYCLE_CNT;
  if (config)
   mclk_freq = DIV_ROUND_CLOSEST_ULL((host->clock * 8),
     xo_clk);
  else
   mclk_freq = DIV_ROUND_CLOSEST_ULL((host->clock * 4),
     xo_clk);

  config = readl_relaxed(host->ioaddr +
    msm_offset->core_dll_config_2);
  config &= ~(0xFF << 10);
  config |= mclk_freq << 10;

  writel_relaxed(config, host->ioaddr +
    msm_offset->core_dll_config_2);

  udelay(5);
 }

 config = readl_relaxed(host->ioaddr +
   msm_offset->core_dll_config);
 config &= ~CORE_DLL_RST;
 writel_relaxed(config, host->ioaddr +
   msm_offset->core_dll_config);

 config = readl_relaxed(host->ioaddr +
   msm_offset->core_dll_config);
 config &= ~CORE_DLL_PDN;
 writel_relaxed(config, host->ioaddr +
   msm_offset->core_dll_config);

 if (msm_host->use_14lpp_dll_reset) {
  msm_cm_dll_set_freq(host);
  config = readl_relaxed(host->ioaddr +
    msm_offset->core_dll_config_2);
  config &= ~CORE_DLL_CLOCK_DISABLE;
  writel_relaxed(config, host->ioaddr +
    msm_offset->core_dll_config_2);
 }

 config = readl_relaxed(host->ioaddr +
   msm_offset->core_dll_config);
 config |= CORE_DLL_EN;
 writel_relaxed(config, host->ioaddr +
   msm_offset->core_dll_config);

 config = readl_relaxed(host->ioaddr +
   msm_offset->core_dll_config);
 config |= CORE_CK_OUT_EN;
 writel_relaxed(config, host->ioaddr +
   msm_offset->core_dll_config);


 while (!(readl_relaxed(host->ioaddr + msm_offset->core_dll_status) &
   CORE_DLL_LOCK)) {

  if (--wait_cnt == 0) {
   dev_err(mmc_dev(mmc), "%s: DLL failed to LOCK\n",
          mmc_hostname(mmc));
   spin_unlock_irqrestore(&host->lock, flags);
   return -ETIMEDOUT;
  }
  udelay(1);
 }

 spin_unlock_irqrestore(&host->lock, flags);
 return 0;
}
