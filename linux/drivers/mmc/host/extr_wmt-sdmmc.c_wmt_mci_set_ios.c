
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmt_mci_priv {scalar_t__ sdmmc_base; int clk_sdmmc; } ;
struct mmc_ios {scalar_t__ power_mode; int bus_width; int clock; } ;
struct mmc_host {int dummy; } ;


 int BM_EIGHTBIT_MODE ;
 int BM_FOURBIT_MODE ;
 int EXT_EIGHTBIT ;



 scalar_t__ MMC_POWER_OFF ;
 scalar_t__ MMC_POWER_UP ;
 scalar_t__ SDMMC_BUSMODE ;
 scalar_t__ SDMMC_EXTCTRL ;
 int WMT_SD_POWER_OFF ;
 int WMT_SD_POWER_ON ;
 int clk_set_rate (int ,int ) ;
 struct wmt_mci_priv* mmc_priv (struct mmc_host*) ;
 int readb (scalar_t__) ;
 int wmt_reset_hardware (struct mmc_host*) ;
 int wmt_set_sd_power (struct wmt_mci_priv*,int ) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void wmt_mci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct wmt_mci_priv *priv;
 u32 busmode, extctrl;

 priv = mmc_priv(mmc);

 if (ios->power_mode == MMC_POWER_UP) {
  wmt_reset_hardware(mmc);

  wmt_set_sd_power(priv, WMT_SD_POWER_ON);
 }
 if (ios->power_mode == MMC_POWER_OFF)
  wmt_set_sd_power(priv, WMT_SD_POWER_OFF);

 if (ios->clock != 0)
  clk_set_rate(priv->clk_sdmmc, ios->clock);

 busmode = readb(priv->sdmmc_base + SDMMC_BUSMODE);
 extctrl = readb(priv->sdmmc_base + SDMMC_EXTCTRL);

 busmode &= ~(BM_EIGHTBIT_MODE | BM_FOURBIT_MODE);
 extctrl &= ~EXT_EIGHTBIT;

 switch (ios->bus_width) {
 case 128:
  busmode |= BM_EIGHTBIT_MODE;
  extctrl |= EXT_EIGHTBIT;
  break;
 case 129:
  busmode |= BM_FOURBIT_MODE;
  break;
 case 130:
  break;
 }

 writeb(busmode, priv->sdmmc_base + SDMMC_BUSMODE);
 writeb(extctrl, priv->sdmmc_base + SDMMC_EXTCTRL);
}
