
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_davinci_host {int mmc; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ DAVINCI_SDIOIST ;
 int IRQ_HANDLED ;
 unsigned int SDIOIST_IOINT ;
 int dev_dbg (int ,char*,unsigned int) ;
 int mmc_dev (int ) ;
 int mmc_signal_sdio_irq (int ) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mmc_davinci_sdio_irq(int irq, void *dev_id)
{
 struct mmc_davinci_host *host = dev_id;
 unsigned int status;

 status = readl(host->base + DAVINCI_SDIOIST);
 if (status & SDIOIST_IOINT) {
  dev_dbg(mmc_dev(host->mmc),
   "SDIO interrupt status %x\n", status);
  writel(status | SDIOIST_IOINT, host->base + DAVINCI_SDIOIST);
  mmc_signal_sdio_irq(host->mmc);
 }
 return IRQ_HANDLED;
}
