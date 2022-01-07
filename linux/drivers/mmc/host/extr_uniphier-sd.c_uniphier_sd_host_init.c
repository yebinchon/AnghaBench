
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_sd_priv {int caps; } ;
struct tmio_mmc_host {scalar_t__ ctl; } ;


 int CTL_SD_CARD_CLK_CTL ;
 int UNIPHIER_SD_CAP_EXTENDED_IP ;
 int UNIPHIER_SD_CLKCTL_OFFEN ;
 scalar_t__ UNIPHIER_SD_HOST_MODE ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_sd_host_init(struct tmio_mmc_host *host)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);
 u32 val;
 if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)
  val = 0x00000101;
 else
  val = 0x00000000;

 writel(val, host->ctl + UNIPHIER_SD_HOST_MODE);

 val = 0;




 if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)
  val |= UNIPHIER_SD_CLKCTL_OFFEN;

 writel(val, host->ctl + (CTL_SD_CARD_CLK_CTL << 1));
}
