
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sdhci_tegra_soc_data {int nvquirks; } ;
struct sdhci_tegra {struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CQHCI_CMD_TIMING (int) ;
 int MMC_RSP_R1B ;
 int NVQUIRK_CQHCI_DCMD_R1B_CMD_TIMING ;
 int mmc_priv (struct mmc_host*) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (int ) ;

__attribute__((used)) static void sdhci_tegra_update_dcmd_desc(struct mmc_host *mmc,
      struct mmc_request *mrq, u64 *data)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(mmc_priv(mmc));
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 const struct sdhci_tegra_soc_data *soc_data = tegra_host->soc_data;

 if (soc_data->nvquirks & NVQUIRK_CQHCI_DCMD_R1B_CMD_TIMING &&
     mrq->cmd->flags & MMC_RSP_R1B)
  *data |= CQHCI_CMD_TIMING(1);
}
