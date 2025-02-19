
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sdhci_msm_offset {scalar_t__ core_dll_config; } ;
struct sdhci_host {scalar_t__ ioaddr; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;


 int CORE_CK_OUT_EN ;
 int ETIMEDOUT ;
 int dev_err (int ,char*,int ,int) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int readl_relaxed (scalar_t__) ;
 struct sdhci_msm_offset* sdhci_priv_msm_offset (struct sdhci_host*) ;
 int udelay (int) ;

__attribute__((used)) static inline int msm_dll_poll_ck_out_en(struct sdhci_host *host, u8 poll)
{
 u32 wait_cnt = 50;
 u8 ck_out_en;
 struct mmc_host *mmc = host->mmc;
 const struct sdhci_msm_offset *msm_offset =
     sdhci_priv_msm_offset(host);


 ck_out_en = !!(readl_relaxed(host->ioaddr +
   msm_offset->core_dll_config) & CORE_CK_OUT_EN);

 while (ck_out_en != poll) {
  if (--wait_cnt == 0) {
   dev_err(mmc_dev(mmc), "%s: CK_OUT_EN bit is not %d\n",
          mmc_hostname(mmc), poll);
   return -ETIMEDOUT;
  }
  udelay(1);

  ck_out_en = !!(readl_relaxed(host->ioaddr +
   msm_offset->core_dll_config) & CORE_CK_OUT_EN);
 }

 return 0;
}
