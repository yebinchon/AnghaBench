
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int pcr_mutex; } ;
struct realtek_pci_sdmmc {int vpclk; int double_clk; int initial_mode; int clock; int ssc_depth; struct rtsx_pcr* pcr; scalar_t__ eject; } ;
struct mmc_ios {int clock; int timing; int power_mode; int bus_width; } ;
struct mmc_host {int dummy; } ;







 int RTSX_SD_CARD ;
 int RTSX_SSC_DEPTH_1M ;
 int RTSX_SSC_DEPTH_2M ;
 int RTSX_SSC_DEPTH_500K ;
 struct realtek_pci_sdmmc* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rtsx_pci_card_exclusive_check (struct rtsx_pcr*,int ) ;
 int rtsx_pci_start_run (struct rtsx_pcr*) ;
 int rtsx_pci_switch_clock (struct rtsx_pcr*,int,int ,int,int,int) ;
 int sd_set_bus_width (struct realtek_pci_sdmmc*,int ) ;
 int sd_set_power_mode (struct realtek_pci_sdmmc*,int ) ;
 int sd_set_timing (struct realtek_pci_sdmmc*,int ) ;

__attribute__((used)) static void sdmmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct realtek_pci_sdmmc *host = mmc_priv(mmc);
 struct rtsx_pcr *pcr = host->pcr;

 if (host->eject)
  return;

 if (rtsx_pci_card_exclusive_check(host->pcr, RTSX_SD_CARD))
  return;

 mutex_lock(&pcr->pcr_mutex);

 rtsx_pci_start_run(pcr);

 sd_set_bus_width(host, ios->bus_width);
 sd_set_power_mode(host, ios->power_mode);
 sd_set_timing(host, ios->timing);

 host->vpclk = 0;
 host->double_clk = 1;

 switch (ios->timing) {
 case 130:
 case 128:
  host->ssc_depth = RTSX_SSC_DEPTH_2M;
  host->vpclk = 1;
  host->double_clk = 0;
  break;
 case 132:
 case 131:
 case 129:
  host->ssc_depth = RTSX_SSC_DEPTH_1M;
  break;
 default:
  host->ssc_depth = RTSX_SSC_DEPTH_500K;
  break;
 }

 host->initial_mode = (ios->clock <= 1000000) ? 1 : 0;

 host->clock = ios->clock;
 rtsx_pci_switch_clock(pcr, ios->clock, host->ssc_depth,
   host->initial_mode, host->double_clk, host->vpclk);

 mutex_unlock(&pcr->pcr_mutex);
}
