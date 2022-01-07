
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; scalar_t__ ioaddr; } ;


 int SDHCI_TEGRA_DLLCAL_CALIBRATE ;
 int SDHCI_TEGRA_DLLCAL_STA_ACTIVE ;
 int SDHCI_TEGRA_VENDOR_DLLCAL_CFG ;
 scalar_t__ SDHCI_TEGRA_VENDOR_DLLCAL_STA ;
 int dev_err (int ,char*) ;
 int mmc_dev (int ) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void tegra_sdhci_hs400_dll_cal(struct sdhci_host *host)
{
 u32 reg;
 int err;

 reg = sdhci_readl(host, SDHCI_TEGRA_VENDOR_DLLCAL_CFG);
 reg |= SDHCI_TEGRA_DLLCAL_CALIBRATE;
 sdhci_writel(host, reg, SDHCI_TEGRA_VENDOR_DLLCAL_CFG);


 err = readl_poll_timeout(host->ioaddr + SDHCI_TEGRA_VENDOR_DLLCAL_STA,
     reg, !(reg & SDHCI_TEGRA_DLLCAL_STA_ACTIVE),
     1000, 5000);
 if (err)
  dev_err(mmc_dev(host->mmc),
   "HS400 delay line calibration timed out\n");
}
