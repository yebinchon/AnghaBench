
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int activated; } ;


 int CQHCI_CFG ;
 int CQHCI_ENABLE ;
 int CQHCI_SSC1 ;
 int CQHCI_SSC1_CBC_MASK ;
 int cqhci_readl (struct cqhci_host*,int ) ;
 int cqhci_writel (struct cqhci_host*,int,int ) ;
 int sdhci_cqe_enable (struct mmc_host*) ;

__attribute__((used)) static void sdhci_tegra_cqe_enable(struct mmc_host *mmc)
{
 struct cqhci_host *cq_host = mmc->cqe_private;
 u32 val;







 if (!cq_host->activated) {
  val = cqhci_readl(cq_host, CQHCI_CFG);
  if (val & CQHCI_ENABLE)
   cqhci_writel(cq_host, (val & ~CQHCI_ENABLE),
         CQHCI_CFG);
  sdhci_cqe_enable(mmc);
  if (val & CQHCI_ENABLE)
   cqhci_writel(cq_host, val, CQHCI_CFG);
 }
 val = cqhci_readl(cq_host, CQHCI_SSC1);
 val &= ~CQHCI_SSC1_CBC_MASK;
 cqhci_writel(cq_host, val, CQHCI_SSC1);
}
