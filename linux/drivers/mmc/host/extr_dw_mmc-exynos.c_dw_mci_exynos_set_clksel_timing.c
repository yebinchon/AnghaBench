
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dw_mci_exynos_priv_data {scalar_t__ ctrl_type; } ;
struct dw_mci {TYPE_1__* slot; struct dw_mci_exynos_priv_data* priv; } ;
struct TYPE_2__ {int flags; } ;


 int CLKSEL ;
 int CLKSEL64 ;
 scalar_t__ DW_MCI_TYPE_EXYNOS7 ;
 scalar_t__ DW_MCI_TYPE_EXYNOS7_SMU ;
 int DW_MMC_CARD_NO_USE_HOLD ;
 int SDMMC_CLKSEL_GET_DRV_WD3 (int) ;
 int SDMMC_CLKSEL_TIMING_MASK ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_writel (struct dw_mci*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void dw_mci_exynos_set_clksel_timing(struct dw_mci *host, u32 timing)
{
 struct dw_mci_exynos_priv_data *priv = host->priv;
 u32 clksel;

 if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 ||
  priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU)
  clksel = mci_readl(host, CLKSEL64);
 else
  clksel = mci_readl(host, CLKSEL);

 clksel = (clksel & ~SDMMC_CLKSEL_TIMING_MASK) | timing;

 if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 ||
  priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU)
  mci_writel(host, CLKSEL64, clksel);
 else
  mci_writel(host, CLKSEL, clksel);
 if (!SDMMC_CLKSEL_GET_DRV_WD3(clksel) && host->slot)
  set_bit(DW_MMC_CARD_NO_USE_HOLD, &host->slot->flags);
}
