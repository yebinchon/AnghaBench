
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {int dummy; } ;
struct f_sdhost_priv {scalar_t__ enable_cmd_dat_delay; } ;


 int F_SDH30_CMD_DAT_DELAY ;
 int F_SDH30_ESD_CONTROL ;
 int SDHCI_CLOCK_CONTROL ;
 struct f_sdhost_priv* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 scalar_t__ sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_reset (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_f_sdh30_reset(struct sdhci_host *host, u8 mask)
{
 struct f_sdhost_priv *priv = sdhci_priv(host);
 u32 ctl;

 if (sdhci_readw(host, SDHCI_CLOCK_CONTROL) == 0)
  sdhci_writew(host, 0xBC01, SDHCI_CLOCK_CONTROL);

 sdhci_reset(host, mask);

 if (priv->enable_cmd_dat_delay) {
  ctl = sdhci_readl(host, F_SDH30_ESD_CONTROL);
  ctl |= F_SDH30_CMD_DAT_DELAY;
  sdhci_writel(host, ctl, F_SDH30_ESD_CONTROL);
 }
}
