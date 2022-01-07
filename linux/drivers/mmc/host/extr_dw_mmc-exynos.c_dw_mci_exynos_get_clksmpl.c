
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_mci_exynos_priv_data {scalar_t__ ctrl_type; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;


 int CLKSEL ;
 int CLKSEL64 ;
 scalar_t__ DW_MCI_TYPE_EXYNOS7 ;
 scalar_t__ DW_MCI_TYPE_EXYNOS7_SMU ;
 int SDMMC_CLKSEL_CCLK_SAMPLE (int ) ;
 int mci_readl (struct dw_mci*,int ) ;

__attribute__((used)) static inline u8 dw_mci_exynos_get_clksmpl(struct dw_mci *host)
{
 struct dw_mci_exynos_priv_data *priv = host->priv;

 if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 ||
  priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU)
  return SDMMC_CLKSEL_CCLK_SAMPLE(mci_readl(host, CLKSEL64));
 else
  return SDMMC_CLKSEL_CCLK_SAMPLE(mci_readl(host, CLKSEL));
}
