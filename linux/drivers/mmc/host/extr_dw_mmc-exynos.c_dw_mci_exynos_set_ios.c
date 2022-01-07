
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_ios {unsigned int clock; int timing; int bus_width; } ;
struct dw_mci_exynos_priv_data {int ddr_timing; int sdr_timing; int ciu_div; int tuned_sample; int hs400_timing; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;


 int MMC_BUS_WIDTH_8 ;





 int SDMMC_CLKSEL_UP_SAMPLE (int ,int ) ;
 int dw_mci_exynos_adjust_clock (struct dw_mci*,unsigned int) ;
 int dw_mci_exynos_config_hs400 (struct dw_mci*,int) ;
 int dw_mci_exynos_set_clksel_timing (struct dw_mci*,int) ;

__attribute__((used)) static void dw_mci_exynos_set_ios(struct dw_mci *host, struct mmc_ios *ios)
{
 struct dw_mci_exynos_priv_data *priv = host->priv;
 unsigned int wanted = ios->clock;
 u32 timing = ios->timing, clksel;

 switch (timing) {
 case 131:

  clksel = SDMMC_CLKSEL_UP_SAMPLE(
    priv->hs400_timing, priv->tuned_sample);
  wanted <<= 1;
  break;
 case 132:
  clksel = priv->ddr_timing;

  if (ios->bus_width == MMC_BUS_WIDTH_8)
   wanted <<= 1;
  break;
 case 129:
 case 128:
  clksel = (priv->sdr_timing & 0xfff8ffff) |
   (priv->ciu_div << 16);
  break;
 case 130:
  clksel = (priv->ddr_timing & 0xfff8ffff) |
   (priv->ciu_div << 16);
  break;
 default:
  clksel = priv->sdr_timing;
 }


 dw_mci_exynos_set_clksel_timing(host, clksel);


 dw_mci_exynos_config_hs400(host, timing);


 dw_mci_exynos_adjust_clock(host, wanted);
}
