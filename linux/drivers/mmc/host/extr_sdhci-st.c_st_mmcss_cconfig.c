
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {scalar_t__ ioaddr; struct mmc_host* mmc; } ;
struct mmc_host {int f_max; int caps; } ;
struct device_node {int dummy; } ;


 int BASE_CLK_FREQ_100 ;
 int BASE_CLK_FREQ_200 ;
 int BASE_CLK_FREQ_50 ;
 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR50 ;
 int RETUNING_TIMER_CNT_MAX ;
 int ST_MMC_CCONFIG_1P8_VOLT ;
 int ST_MMC_CCONFIG_1_DEFAULT ;
 int ST_MMC_CCONFIG_2_DEFAULT ;
 int ST_MMC_CCONFIG_3_DEFAULT ;
 int ST_MMC_CCONFIG_4_DEFAULT ;
 int ST_MMC_CCONFIG_5_DEFAULT ;
 int ST_MMC_CCONFIG_DDR50 ;
 int ST_MMC_CCONFIG_EMMC_SLOT_TYPE ;
 scalar_t__ ST_MMC_CCONFIG_REG_1 ;
 scalar_t__ ST_MMC_CCONFIG_REG_2 ;
 scalar_t__ ST_MMC_CCONFIG_REG_3 ;
 scalar_t__ ST_MMC_CCONFIG_REG_4 ;
 scalar_t__ ST_MMC_CCONFIG_REG_5 ;
 int ST_MMC_CCONFIG_SDR104 ;
 int ST_MMC_CCONFIG_SDR50 ;
 int ST_MMC_CCONFIG_TUNING_FOR_SDR50 ;
 scalar_t__ ST_MMC_GP_OUTPUT ;
 int ST_MMC_GP_OUTPUT_CD ;
 int clk_set_rate (int ,int) ;
 int mmc_card_is_removable (struct mmc_host*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void st_mmcss_cconfig(struct device_node *np, struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct mmc_host *mhost = host->mmc;
 u32 cconf2, cconf3, cconf4, cconf5;

 if (!of_device_is_compatible(np, "st,sdhci-stih407"))
  return;

 cconf2 = ST_MMC_CCONFIG_2_DEFAULT;
 cconf3 = ST_MMC_CCONFIG_3_DEFAULT;
 cconf4 = ST_MMC_CCONFIG_4_DEFAULT;
 cconf5 = ST_MMC_CCONFIG_5_DEFAULT;

 writel_relaxed(ST_MMC_CCONFIG_1_DEFAULT,
   host->ioaddr + ST_MMC_CCONFIG_REG_1);




 switch (mhost->f_max) {
 case 200000000:
  clk_set_rate(pltfm_host->clk, mhost->f_max);
  cconf2 |= BASE_CLK_FREQ_200;
  break;
 case 100000000:
  clk_set_rate(pltfm_host->clk, mhost->f_max);
  cconf2 |= BASE_CLK_FREQ_100;
  break;
 default:
  clk_set_rate(pltfm_host->clk, 50000000);
  cconf2 |= BASE_CLK_FREQ_50;
 }

 writel_relaxed(cconf2, host->ioaddr + ST_MMC_CCONFIG_REG_2);

 if (!mmc_card_is_removable(mhost))
  cconf3 |= ST_MMC_CCONFIG_EMMC_SLOT_TYPE;
 else

  writel_relaxed(ST_MMC_GP_OUTPUT_CD,
    host->ioaddr + ST_MMC_GP_OUTPUT);

 if (mhost->caps & MMC_CAP_UHS_SDR50) {

  cconf3 |= ST_MMC_CCONFIG_1P8_VOLT;
  cconf4 |= ST_MMC_CCONFIG_SDR50;

  cconf5 |= ST_MMC_CCONFIG_TUNING_FOR_SDR50;

  cconf5 |= RETUNING_TIMER_CNT_MAX;
 }

 if (mhost->caps & MMC_CAP_UHS_SDR104) {




  cconf3 |= ST_MMC_CCONFIG_1P8_VOLT;
  cconf4 |= ST_MMC_CCONFIG_SDR104;

  cconf5 |= RETUNING_TIMER_CNT_MAX;
 }

 if (mhost->caps & MMC_CAP_UHS_DDR50)
  cconf4 |= ST_MMC_CCONFIG_DDR50;

 writel_relaxed(cconf3, host->ioaddr + ST_MMC_CCONFIG_REG_3);
 writel_relaxed(cconf4, host->ioaddr + ST_MMC_CCONFIG_REG_4);
 writel_relaxed(cconf5, host->ioaddr + ST_MMC_CCONFIG_REG_5);
}
