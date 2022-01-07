
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int timing; int mmc; } ;
 int SDHCI_PRESET_FOR_DDR50 ;
 int SDHCI_PRESET_FOR_HS400 ;
 int SDHCI_PRESET_FOR_SDR104 ;
 int SDHCI_PRESET_FOR_SDR12 ;
 int SDHCI_PRESET_FOR_SDR25 ;
 int SDHCI_PRESET_FOR_SDR50 ;
 int mmc_hostname (int ) ;
 int pr_warn (char*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;

__attribute__((used)) static u16 sdhci_get_preset_value(struct sdhci_host *host)
{
 u16 preset = 0;

 switch (host->timing) {
 case 130:
  preset = sdhci_readw(host, SDHCI_PRESET_FOR_SDR12);
  break;
 case 129:
  preset = sdhci_readw(host, SDHCI_PRESET_FOR_SDR25);
  break;
 case 128:
  preset = sdhci_readw(host, SDHCI_PRESET_FOR_SDR50);
  break;
 case 131:
 case 134:
  preset = sdhci_readw(host, SDHCI_PRESET_FOR_SDR104);
  break;
 case 132:
 case 135:
  preset = sdhci_readw(host, SDHCI_PRESET_FOR_DDR50);
  break;
 case 133:
  preset = sdhci_readw(host, SDHCI_PRESET_FOR_HS400);
  break;
 default:
  pr_warn("%s: Invalid UHS-I mode selected\n",
   mmc_hostname(host->mmc));
  preset = sdhci_readw(host, SDHCI_PRESET_FOR_SDR12);
  break;
 }
 return preset;
}
