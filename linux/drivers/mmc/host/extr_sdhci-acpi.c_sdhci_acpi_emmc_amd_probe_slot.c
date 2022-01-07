
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int set_ios; int select_drive_strength; } ;
struct sdhci_host {int caps1; TYPE_2__ mmc_host_ops; TYPE_1__* mmc; } ;
struct sdhci_acpi_host {struct sdhci_host* host; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {int caps; int caps2; } ;


 int MMC_CAP2_HS400_1_8V ;
 int MMC_CAP_1_8V_DDR ;
 int SDHCI_SUPPORT_DDR50 ;
 int SDHCI_SUPPORT_SDR104 ;
 int amd_select_drive_strength ;
 int amd_set_ios ;
 struct sdhci_acpi_host* platform_get_drvdata (struct platform_device*) ;
 int sdhci_read_caps (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_acpi_emmc_amd_probe_slot(struct platform_device *pdev,
       const char *hid, const char *uid)
{
 struct sdhci_acpi_host *c = platform_get_drvdata(pdev);
 struct sdhci_host *host = c->host;

 sdhci_read_caps(host);
 if (host->caps1 & SDHCI_SUPPORT_DDR50)
  host->mmc->caps = MMC_CAP_1_8V_DDR;

 if ((host->caps1 & SDHCI_SUPPORT_SDR104) &&
     (host->mmc->caps & MMC_CAP_1_8V_DDR))
  host->mmc->caps2 = MMC_CAP2_HS400_1_8V;

 host->mmc_host_ops.select_drive_strength = amd_select_drive_strength;
 host->mmc_host_ops.set_ios = amd_set_ios;
 return 0;
}
