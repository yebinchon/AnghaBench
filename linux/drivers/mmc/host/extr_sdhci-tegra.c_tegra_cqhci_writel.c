
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mmc_host {int dummy; } ;
struct cqhci_host {scalar_t__ mmio; struct mmc_host* mmc; } ;
typedef int ktime_t ;


 int CQHCI_CTL ;
 int CQHCI_HALT ;
 int cqhci_readl (struct cqhci_host*,int) ;
 int ktime_add_us (int ,int) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int sdhci_cqe_enable (struct mmc_host*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tegra_cqhci_writel(struct cqhci_host *cq_host, u32 val, int reg)
{
 struct mmc_host *mmc = cq_host->mmc;
 u8 ctrl;
 ktime_t timeout;
 bool timed_out;
 if (reg == CQHCI_CTL && !(val & CQHCI_HALT) &&
     cqhci_readl(cq_host, CQHCI_CTL) & CQHCI_HALT) {
  sdhci_cqe_enable(mmc);
  writel(val, cq_host->mmio + reg);
  timeout = ktime_add_us(ktime_get(), 50);
  while (1) {
   timed_out = ktime_compare(ktime_get(), timeout) > 0;
   ctrl = cqhci_readl(cq_host, CQHCI_CTL);
   if (!(ctrl & CQHCI_HALT) || timed_out)
    break;
  }




  if (timed_out)
   writel(val, cq_host->mmio + reg);
 } else {
  writel(val, cq_host->mmio + reg);
 }
}
