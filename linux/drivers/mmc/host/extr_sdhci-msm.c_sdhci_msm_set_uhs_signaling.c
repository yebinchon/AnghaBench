
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_offset {scalar_t__ core_dll_config; } ;
struct sdhci_msm_host {int calibration_done; struct sdhci_msm_offset* offset; } ;
struct sdhci_host {scalar_t__ clock; struct mmc_host* mmc; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int const timing; } ;
struct mmc_host {TYPE_1__ ios; } ;


 int CORE_DLL_PDN ;
 int CORE_DLL_RST ;
 scalar_t__ CORE_FREQ_100MHZ ;
 int SDHCI_CTRL_UHS_DDR50 ;
 int SDHCI_CTRL_UHS_MASK ;
 int SDHCI_CTRL_UHS_SDR104 ;
 int SDHCI_CTRL_UHS_SDR12 ;
 int SDHCI_CTRL_UHS_SDR25 ;
 int SDHCI_CTRL_UHS_SDR50 ;
 int SDHCI_HOST_CONTROL2 ;
 int dev_dbg (int ,char*,int ,scalar_t__,unsigned int,int ) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int readl_relaxed (scalar_t__) ;
 int sdhci_msm_hs400 (struct sdhci_host*,TYPE_1__*) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sdhci_msm_set_uhs_signaling(struct sdhci_host *host,
     unsigned int uhs)
{
 struct mmc_host *mmc = host->mmc;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 u16 ctrl_2;
 u32 config;
 const struct sdhci_msm_offset *msm_offset =
     msm_host->offset;

 ctrl_2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);

 ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
 switch (uhs) {
 case 130:
  ctrl_2 |= SDHCI_CTRL_UHS_SDR12;
  break;
 case 129:
  ctrl_2 |= SDHCI_CTRL_UHS_SDR25;
  break;
 case 128:
  ctrl_2 |= SDHCI_CTRL_UHS_SDR50;
  break;
 case 133:
 case 134:
 case 131:
  ctrl_2 |= SDHCI_CTRL_UHS_SDR104;
  break;
 case 132:
 case 135:
  ctrl_2 |= SDHCI_CTRL_UHS_DDR50;
  break;
 }







 if (host->clock <= CORE_FREQ_100MHZ) {
  if (uhs == 133 ||
      uhs == 134 ||
      uhs == 131)
   ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;




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





  msm_host->calibration_done = 0;
 }

 dev_dbg(mmc_dev(mmc), "%s: clock=%u uhs=%u ctrl_2=0x%x\n",
  mmc_hostname(host->mmc), host->clock, uhs, ctrl_2);
 sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);

 if (mmc->ios.timing == 133)
  sdhci_msm_hs400(host, &mmc->ios);
}
