
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dw_mci_exynos_priv_data {scalar_t__ ctrl_type; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;


 int CLKSEL ;
 int CLKSEL64 ;
 scalar_t__ DW_MCI_TYPE_EXYNOS4210 ;
 scalar_t__ DW_MCI_TYPE_EXYNOS4412 ;
 scalar_t__ DW_MCI_TYPE_EXYNOS7 ;
 scalar_t__ DW_MCI_TYPE_EXYNOS7_SMU ;
 scalar_t__ EXYNOS4210_FIXED_CIU_CLK_DIV ;
 scalar_t__ EXYNOS4412_FIXED_CIU_CLK_DIV ;
 scalar_t__ SDMMC_CLKSEL_GET_DIV (int ) ;
 int mci_readl (struct dw_mci*,int ) ;

__attribute__((used)) static inline u8 dw_mci_exynos_get_ciu_div(struct dw_mci *host)
{
 struct dw_mci_exynos_priv_data *priv = host->priv;

 if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS4412)
  return EXYNOS4412_FIXED_CIU_CLK_DIV;
 else if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS4210)
  return EXYNOS4210_FIXED_CIU_CLK_DIV;
 else if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 ||
   priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU)
  return SDMMC_CLKSEL_GET_DIV(mci_readl(host, CLKSEL64)) + 1;
 else
  return SDMMC_CLKSEL_GET_DIV(mci_readl(host, CLKSEL)) + 1;
}
