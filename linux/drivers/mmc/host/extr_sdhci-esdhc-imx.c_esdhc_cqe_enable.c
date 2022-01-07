
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {int flags; int quirks2; int mmc; } ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int dummy; } ;


 int CQHCI_CTL ;
 scalar_t__ CQHCI_HALT ;
 int SDHCI_BUFFER ;
 int SDHCI_DATA_AVAILABLE ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_QUIRK2_SUPPORT_SINGLE ;
 int SDHCI_REQ_USE_DMA ;
 int SDHCI_TRANSFER_MODE ;
 int SDHCI_TRNS_BLK_CNT_EN ;
 int SDHCI_TRNS_DMA ;
 scalar_t__ cqhci_readl (struct cqhci_host*,int ) ;
 int cqhci_writel (struct cqhci_host*,int ,int ) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int mdelay (int) ;
 int mmc_dev (int ) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_cqe_enable (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void esdhc_cqe_enable(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct cqhci_host *cq_host = mmc->cqe_private;
 u32 reg;
 u16 mode;
 int count = 10;





 reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
 while (reg & SDHCI_DATA_AVAILABLE) {
  sdhci_readl(host, SDHCI_BUFFER);
  reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
  if (count-- == 0) {
   dev_warn(mmc_dev(host->mmc),
    "CQE may get stuck because the Buffer Read Enable bit is set\n");
   break;
  }
  mdelay(1);
 }






 mode = sdhci_readw(host, SDHCI_TRANSFER_MODE);
 if (host->flags & SDHCI_REQ_USE_DMA)
  mode |= SDHCI_TRNS_DMA;
 if (!(host->quirks2 & SDHCI_QUIRK2_SUPPORT_SINGLE))
  mode |= SDHCI_TRNS_BLK_CNT_EN;
 sdhci_writew(host, mode, SDHCI_TRANSFER_MODE);







 cqhci_writel(cq_host, 0, CQHCI_CTL);
 if (cqhci_readl(cq_host, CQHCI_CTL) && CQHCI_HALT)
  dev_err(mmc_dev(host->mmc),
   "failed to exit halt state when enable CQE\n");


 sdhci_cqe_enable(mmc);
}
