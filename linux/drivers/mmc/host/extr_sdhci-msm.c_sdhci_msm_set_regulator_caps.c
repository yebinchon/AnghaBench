
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_msm_offset {scalar_t__ core_vendor_spec; } ;
struct sdhci_msm_host {int curr_io_level; int caps_0; struct sdhci_msm_offset* offset; struct mmc_host* mmc; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct regulator {int dummy; } ;
struct TYPE_2__ {struct regulator* vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int CORE_1_8V_SUPPORT ;
 int CORE_3_0V_SUPPORT ;
 int CORE_IO_PAD_PWR_SWITCH ;
 int CORE_IO_PAD_PWR_SWITCH_EN ;
 int IS_ERR (struct regulator*) ;
 int REQ_IO_HIGH ;
 int REQ_IO_LOW ;
 int mmc_hostname (struct mmc_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int pr_debug (char*,int ,int) ;
 int pr_warn (char*,int ) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ regulator_is_supported_voltage (struct regulator*,int,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sdhci_msm_set_regulator_caps(struct sdhci_msm_host *msm_host)
{
 struct mmc_host *mmc = msm_host->mmc;
 struct regulator *supply = mmc->supply.vqmmc;
 u32 caps = 0, config;
 struct sdhci_host *host = mmc_priv(mmc);
 const struct sdhci_msm_offset *msm_offset = msm_host->offset;

 if (!IS_ERR(mmc->supply.vqmmc)) {
  if (regulator_is_supported_voltage(supply, 1700000, 1950000))
   caps |= CORE_1_8V_SUPPORT;
  if (regulator_is_supported_voltage(supply, 2700000, 3600000))
   caps |= CORE_3_0V_SUPPORT;

  if (!caps)
   pr_warn("%s: 1.8/3V not supported for vqmmc\n",
     mmc_hostname(mmc));
 }

 if (caps) {




  u32 io_level = msm_host->curr_io_level;

  config = readl_relaxed(host->ioaddr +
    msm_offset->core_vendor_spec);
  config |= CORE_IO_PAD_PWR_SWITCH_EN;

  if ((io_level & REQ_IO_HIGH) && (caps & CORE_3_0V_SUPPORT))
   config &= ~CORE_IO_PAD_PWR_SWITCH;
  else if ((io_level & REQ_IO_LOW) || (caps & CORE_1_8V_SUPPORT))
   config |= CORE_IO_PAD_PWR_SWITCH;

  writel_relaxed(config,
    host->ioaddr + msm_offset->core_vendor_spec);
 }
 msm_host->caps_0 |= caps;
 pr_debug("%s: supported caps: 0x%08x\n", mmc_hostname(mmc), caps);
}
