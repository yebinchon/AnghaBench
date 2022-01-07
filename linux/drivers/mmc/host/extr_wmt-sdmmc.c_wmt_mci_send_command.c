
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;
struct mmc_host {int dummy; } ;


 int CTLR_FIFO_RESET ;
 scalar_t__ SDMMC_ARG ;
 scalar_t__ SDMMC_CMD ;
 scalar_t__ SDMMC_CTLR ;
 scalar_t__ SDMMC_RSPTYPE ;
 scalar_t__ SDMMC_STS0 ;
 scalar_t__ SDMMC_STS1 ;
 scalar_t__ SDMMC_STS2 ;
 scalar_t__ SDMMC_STS3 ;
 int WMT_SD_POWER_ON ;
 struct wmt_mci_priv* mmc_priv (struct mmc_host*) ;
 int readb (scalar_t__) ;
 int wmt_set_sd_power (struct wmt_mci_priv*,int ) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int wmt_mci_send_command(struct mmc_host *mmc, u8 command, u8 cmdtype,
    u32 arg, u8 rsptype)
{
 struct wmt_mci_priv *priv;
 u32 reg_tmp;

 priv = mmc_priv(mmc);


 writeb(command, priv->sdmmc_base + SDMMC_CMD);
 writel(arg, priv->sdmmc_base + SDMMC_ARG);
 writeb(rsptype, priv->sdmmc_base + SDMMC_RSPTYPE);


 reg_tmp = readb(priv->sdmmc_base + SDMMC_CTLR);
 writeb(reg_tmp | CTLR_FIFO_RESET, priv->sdmmc_base + SDMMC_CTLR);


 wmt_set_sd_power(priv, WMT_SD_POWER_ON);


 writeb(0xFF, priv->sdmmc_base + SDMMC_STS0);
 writeb(0xFF, priv->sdmmc_base + SDMMC_STS1);
 writeb(0xFF, priv->sdmmc_base + SDMMC_STS2);
 writeb(0xFF, priv->sdmmc_base + SDMMC_STS3);


 reg_tmp = readb(priv->sdmmc_base + SDMMC_CTLR);
 writeb((reg_tmp & 0x0F) | (cmdtype << 4),
        priv->sdmmc_base + SDMMC_CTLR);

 return 0;
}
