
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_host {TYPE_1__* mmc; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int caps; } ;


 int MMC_CAP_UHS_SDR50 ;
 int SDHCI_CAPABILITIES_1 ;
 int SDHCI_SLOT_INT_STATUS ;
 int SDHCI_SPEC_300 ;
 int SDHCI_SUPPORT_DDR50 ;
 int SDHCI_SUPPORT_SDR50 ;
 int SDHCI_USE_SDR50_TUNING ;
 int readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 sdhci_sirf_readl_le(struct sdhci_host *host, int reg)
{
 u32 val = readl(host->ioaddr + reg);

 if (unlikely((reg == SDHCI_CAPABILITIES_1) &&
   (host->mmc->caps & MMC_CAP_UHS_SDR50))) {

  val = SDHCI_SUPPORT_DDR50 |
   SDHCI_SUPPORT_SDR50 | SDHCI_USE_SDR50_TUNING;
 }

 if (unlikely(reg == SDHCI_SLOT_INT_STATUS)) {
  u32 prss = val;

  prss &= ~(0xFF << 16);
  val = prss | (SDHCI_SPEC_300 << 16);
 }
 return val;
}
