
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_ios {scalar_t__ timing; } ;
struct hi3798cv200_priv {int drive_clk; } ;
struct dw_mci {struct hi3798cv200_priv* priv; } ;


 int DDR_REG ;
 int ENABLE_SHIFT ;
 scalar_t__ MMC_TIMING_LEGACY ;
 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_MMC_HS ;
 scalar_t__ MMC_TIMING_MMC_HS200 ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 int SDMMC_DDR_HS400 ;
 int SDMMC_ENABLE_PHASE ;
 int SDMMC_UHS_DDR ;
 int UHS_REG ;
 int clk_set_phase (int ,int) ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_writel (struct dw_mci*,int ,int ) ;

__attribute__((used)) static void dw_mci_hi3798cv200_set_ios(struct dw_mci *host, struct mmc_ios *ios)
{
 struct hi3798cv200_priv *priv = host->priv;
 u32 val;

 val = mci_readl(host, UHS_REG);
 if (ios->timing == MMC_TIMING_MMC_DDR52 ||
     ios->timing == MMC_TIMING_UHS_DDR50)
  val |= SDMMC_UHS_DDR;
 else
  val &= ~SDMMC_UHS_DDR;
 mci_writel(host, UHS_REG, val);

 val = mci_readl(host, ENABLE_SHIFT);
 if (ios->timing == MMC_TIMING_MMC_DDR52)
  val |= SDMMC_ENABLE_PHASE;
 else
  val &= ~SDMMC_ENABLE_PHASE;
 mci_writel(host, ENABLE_SHIFT, val);

 val = mci_readl(host, DDR_REG);
 if (ios->timing == MMC_TIMING_MMC_HS400)
  val |= SDMMC_DDR_HS400;
 else
  val &= ~SDMMC_DDR_HS400;
 mci_writel(host, DDR_REG, val);

 if (ios->timing == MMC_TIMING_MMC_HS ||
     ios->timing == MMC_TIMING_LEGACY)
  clk_set_phase(priv->drive_clk, 180);
 else if (ios->timing == MMC_TIMING_MMC_HS200)
  clk_set_phase(priv->drive_clk, 135);
}
