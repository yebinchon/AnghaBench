
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdhci_tegra {int pad_control_available; TYPE_1__* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_2__* mmc; } ;
struct TYPE_6__ {int vqmmc; } ;
struct TYPE_5__ {TYPE_3__ supply; } ;
struct TYPE_4__ {int nvquirks; } ;


 scalar_t__ IS_ERR (int ) ;
 int NVQUIRK_NEEDS_PAD_CONTROL ;
 int regulator_is_supported_voltage (int ,int,int) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static bool tegra_sdhci_is_pad_and_regulator_valid(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 int has_1v8, has_3v3;
 if (!(tegra_host->soc_data->nvquirks & NVQUIRK_NEEDS_PAD_CONTROL))
  return 1;

 if (IS_ERR(host->mmc->supply.vqmmc))
  return 0;

 has_1v8 = regulator_is_supported_voltage(host->mmc->supply.vqmmc,
       1700000, 1950000);

 has_3v3 = regulator_is_supported_voltage(host->mmc->supply.vqmmc,
       2700000, 3600000);

 if (has_1v8 == 1 && has_3v3 == 1)
  return tegra_host->pad_control_available;


 return 1;
}
