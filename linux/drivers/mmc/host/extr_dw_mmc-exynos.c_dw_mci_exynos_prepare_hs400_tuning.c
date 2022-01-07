
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int clock; } ;
struct dw_mci_exynos_priv_data {int hs400_timing; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;


 int dw_mci_exynos_adjust_clock (struct dw_mci*,int) ;
 int dw_mci_exynos_set_clksel_timing (struct dw_mci*,int ) ;

__attribute__((used)) static int dw_mci_exynos_prepare_hs400_tuning(struct dw_mci *host,
     struct mmc_ios *ios)
{
 struct dw_mci_exynos_priv_data *priv = host->priv;

 dw_mci_exynos_set_clksel_timing(host, priv->hs400_timing);
 dw_mci_exynos_adjust_clock(host, (ios->clock) << 1);

 return 0;
}
