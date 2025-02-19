
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct mmc_davinci_host {int sdio_int; scalar_t__ base; int mmc; } ;


 scalar_t__ DAVINCI_SDIOIEN ;
 scalar_t__ DAVINCI_SDIOIST ;
 scalar_t__ DAVINCI_SDIOST0 ;
 int SDIOIEN_IOINTEN ;
 int SDIOIST_IOINT ;
 int SDIOST0_DAT1_HI ;
 struct mmc_davinci_host* mmc_priv (struct mmc_host*) ;
 int mmc_signal_sdio_irq (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mmc_davinci_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct mmc_davinci_host *host = mmc_priv(mmc);

 if (enable) {
  if (!(readl(host->base + DAVINCI_SDIOST0) & SDIOST0_DAT1_HI)) {
   writel(SDIOIST_IOINT, host->base + DAVINCI_SDIOIST);
   mmc_signal_sdio_irq(host->mmc);
  } else {
   host->sdio_int = 1;
   writel(readl(host->base + DAVINCI_SDIOIEN) |
          SDIOIEN_IOINTEN, host->base + DAVINCI_SDIOIEN);
  }
 } else {
  host->sdio_int = 0;
  writel(readl(host->base + DAVINCI_SDIOIEN) & ~SDIOIEN_IOINTEN,
         host->base + DAVINCI_SDIOIEN);
 }
}
