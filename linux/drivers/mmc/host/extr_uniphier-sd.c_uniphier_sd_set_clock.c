
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_sd_priv {unsigned int clk_rate; int caps; } ;
struct tmio_mmc_host {scalar_t__ ctl; } ;


 int CLK_CTL_DIV_MASK ;
 int CLK_CTL_SCLKEN ;
 int CTL_SD_CARD_CLK_CTL ;
 int UNIPHIER_SD_CAP_EXTENDED_IP ;
 int UNIPHIER_SD_CLK_CTL_DIV1 ;
 int UNIPHIER_SD_CLK_CTL_DIV1024 ;
 int readl (scalar_t__) ;
 int roundup_pow_of_two (unsigned long) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_sd_set_clock(struct tmio_mmc_host *host,
      unsigned int clock)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);
 unsigned long divisor;
 u32 tmp;

 tmp = readl(host->ctl + (CTL_SD_CARD_CLK_CTL << 1));


 tmp &= ~CLK_CTL_SCLKEN;
 writel(tmp, host->ctl + (CTL_SD_CARD_CLK_CTL << 1));

 if (clock == 0)
  return;

 tmp &= ~UNIPHIER_SD_CLK_CTL_DIV1024;
 tmp &= ~UNIPHIER_SD_CLK_CTL_DIV1;
 tmp &= ~CLK_CTL_DIV_MASK;

 divisor = priv->clk_rate / clock;
 if (divisor <= 1)
  tmp |= UNIPHIER_SD_CLK_CTL_DIV1;
 else if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP && divisor > 512)
  tmp |= UNIPHIER_SD_CLK_CTL_DIV1024;
 else
  tmp |= roundup_pow_of_two(divisor) >> 2;

 writel(tmp, host->ctl + (CTL_SD_CARD_CLK_CTL << 1));

 tmp |= CLK_CTL_SCLKEN;
 writel(tmp, host->ctl + (CTL_SD_CARD_CLK_CTL << 1));
}
