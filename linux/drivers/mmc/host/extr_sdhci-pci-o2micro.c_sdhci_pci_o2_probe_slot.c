
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_pci_slot {struct sdhci_host* host; struct sdhci_pci_chip* chip; } ;
struct sdhci_pci_chip {TYPE_2__* pdev; } ;
struct TYPE_5__ {int execute_tuning; int get_cd; } ;
struct sdhci_host {TYPE_1__ mmc_host_ops; TYPE_4__* mmc; int flags; int quirks; } ;
struct o2_host {scalar_t__ dll_adjust_count; } ;
struct TYPE_7__ {int caps2; int caps; } ;
struct TYPE_6__ {int device; } ;


 int EIO ;
 int MMC_CAP2_NO_SD ;
 int MMC_CAP2_NO_SDIO ;
 int MMC_CAP_8_BIT_DATA ;
 int O2_SD_DETECT_SETTING ;
 int O2_SD_MISC_SETTING ;
 int O2_SD_VENDOR_SETTING ;
 int O2_SD_VENDOR_SETTING2 ;





 int SDHCI_CAN_DO_8BIT ;
 int SDHCI_CAPABILITIES ;
 int SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 ;
 int SDHCI_SIGNALING_180 ;
 int SDHCI_SIGNALING_330 ;
 int mmc_hostname (TYPE_4__*) ;
 int pci_read_config_dword (TYPE_2__*,int ,int*) ;
 int pci_write_config_dword (TYPE_2__*,int ,int) ;
 int pr_info (char*,int ) ;
 int sdhci_o2_execute_tuning ;
 int sdhci_o2_get_cd ;
 int sdhci_pci_o2_enable_msi (struct sdhci_pci_chip*,struct sdhci_host*) ;
 struct o2_host* sdhci_pci_priv (struct sdhci_pci_slot*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

int sdhci_pci_o2_probe_slot(struct sdhci_pci_slot *slot)
{
 struct sdhci_pci_chip *chip;
 struct sdhci_host *host;
 struct o2_host *o2_host = sdhci_pci_priv(slot);
 u32 reg, caps;
 int ret;

 chip = slot->chip;
 host = slot->host;

 o2_host->dll_adjust_count = 0;
 caps = sdhci_readl(host, SDHCI_CAPABILITIES);





 if (caps & SDHCI_CAN_DO_8BIT)
  host->mmc->caps |= MMC_CAP_8_BIT_DATA;

 switch (chip->pdev->device) {
 case 131:
 case 129:
 case 128:
 case 130:
 case 132:
  reg = sdhci_readl(host, O2_SD_VENDOR_SETTING);
  if (reg & 0x1)
   host->quirks |= SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12;

  sdhci_pci_o2_enable_msi(chip, host);

  if (chip->pdev->device == 129) {
   ret = pci_read_config_dword(chip->pdev,
          O2_SD_MISC_SETTING, &reg);
   if (ret)
    return -EIO;
   if (reg & (1 << 4)) {
    pr_info("%s: emmc 1.8v flag is set, force 1.8v signaling voltage\n",
     mmc_hostname(host->mmc));
    host->flags &= ~SDHCI_SIGNALING_330;
    host->flags |= SDHCI_SIGNALING_180;
    host->mmc->caps2 |= MMC_CAP2_NO_SD;
    host->mmc->caps2 |= MMC_CAP2_NO_SDIO;
    pci_write_config_dword(chip->pdev,
             O2_SD_DETECT_SETTING, 3);
   }

   slot->host->mmc_host_ops.get_cd = sdhci_o2_get_cd;
  }

  host->mmc_host_ops.execute_tuning = sdhci_o2_execute_tuning;

  if (chip->pdev->device != 132)
   break;

  reg = sdhci_readl(host, O2_SD_VENDOR_SETTING2);
  reg |= (1 << 12);
  sdhci_writel(host, reg, O2_SD_VENDOR_SETTING2);

  break;
 default:
  break;
 }

 return 0;
}
