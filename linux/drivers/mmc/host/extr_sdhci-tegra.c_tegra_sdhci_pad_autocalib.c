
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sdhci_tegra_autocal_offsets {int pull_down_sdr104; int pull_up_sdr104; int pull_down_hs400; int pull_up_hs400; int pull_down_1v8; int pull_up_1v8; int pull_down_3v3; int pull_up_3v3; } ;
struct sdhci_tegra {struct sdhci_tegra_autocal_offsets autocal_offsets; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; scalar_t__ ioaddr; } ;
struct mmc_ios {int timing; int signal_voltage; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;


 int MMC_SIGNAL_VOLTAGE_180 ;


 int SDHCI_AUTO_CAL_ENABLE ;
 int SDHCI_AUTO_CAL_START ;
 int SDHCI_TEGRA_AUTO_CAL_ACTIVE ;
 int SDHCI_TEGRA_AUTO_CAL_CONFIG ;
 scalar_t__ SDHCI_TEGRA_AUTO_CAL_STATUS ;
 int dev_err (int ,char*,...) ;
 int mmc_dev (TYPE_1__*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int tegra_sdhci_configure_cal_pad (struct sdhci_host*,int) ;
 int tegra_sdhci_configure_card_clk (struct sdhci_host*,int) ;
 int tegra_sdhci_set_pad_autocal_offset (struct sdhci_host*,int) ;
 int tegra_sdhci_set_padctrl (struct sdhci_host*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tegra_sdhci_pad_autocalib(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 struct sdhci_tegra_autocal_offsets offsets =
   tegra_host->autocal_offsets;
 struct mmc_ios *ios = &host->mmc->ios;
 bool card_clk_enabled;
 u16 pdpu;
 u32 reg;
 int ret;

 switch (ios->timing) {
 case 128:
  pdpu = offsets.pull_down_sdr104 << 8 | offsets.pull_up_sdr104;
  break;
 case 129:
  pdpu = offsets.pull_down_hs400 << 8 | offsets.pull_up_hs400;
  break;
 default:
  if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180)
   pdpu = offsets.pull_down_1v8 << 8 | offsets.pull_up_1v8;
  else
   pdpu = offsets.pull_down_3v3 << 8 | offsets.pull_up_3v3;
 }


 tegra_sdhci_set_pad_autocal_offset(host, pdpu);

 card_clk_enabled = tegra_sdhci_configure_card_clk(host, 0);

 tegra_sdhci_configure_cal_pad(host, 1);

 reg = sdhci_readl(host, SDHCI_TEGRA_AUTO_CAL_CONFIG);
 reg |= SDHCI_AUTO_CAL_ENABLE | SDHCI_AUTO_CAL_START;
 sdhci_writel(host, reg, SDHCI_TEGRA_AUTO_CAL_CONFIG);

 usleep_range(1, 2);

 ret = readl_poll_timeout(host->ioaddr + SDHCI_TEGRA_AUTO_CAL_STATUS,
     reg, !(reg & SDHCI_TEGRA_AUTO_CAL_ACTIVE),
     1000, 10000);

 tegra_sdhci_configure_cal_pad(host, 0);

 tegra_sdhci_configure_card_clk(host, card_clk_enabled);

 if (ret) {
  dev_err(mmc_dev(host->mmc), "Pad autocal timed out\n");


  reg = sdhci_readl(host, SDHCI_TEGRA_AUTO_CAL_CONFIG);
  reg &= ~SDHCI_AUTO_CAL_ENABLE;
  sdhci_writel(host, reg, SDHCI_TEGRA_AUTO_CAL_CONFIG);

  ret = tegra_sdhci_set_padctrl(host, ios->signal_voltage, 0);
  if (ret < 0)
   dev_err(mmc_dev(host->mmc),
    "Setting drive strengths failed: %d\n", ret);
 }
}
