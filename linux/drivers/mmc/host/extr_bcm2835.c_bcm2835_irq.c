
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_host {int irq_block; int irq_busy; int hcfg; int irq_data; int lock; scalar_t__ ioaddr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int SDHCFG_DATA_IRPT_EN ;
 scalar_t__ SDHSTS ;
 int SDHSTS_BLOCK_IRPT ;
 int SDHSTS_BUSY_IRPT ;
 int SDHSTS_DATA_FLAG ;
 int SDHSTS_SDIO_IRPT ;
 int bcm2835_check_cmd_error (struct bcm2835_host*,int) ;
 int bcm2835_check_data_error (struct bcm2835_host*,int) ;
 int bcm2835_data_irq (struct bcm2835_host*,int) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t bcm2835_irq(int irq, void *dev_id)
{
 irqreturn_t result = IRQ_NONE;
 struct bcm2835_host *host = dev_id;
 u32 intmask;

 spin_lock(&host->lock);

 intmask = readl(host->ioaddr + SDHSTS);

 writel(SDHSTS_BUSY_IRPT |
        SDHSTS_BLOCK_IRPT |
        SDHSTS_SDIO_IRPT |
        SDHSTS_DATA_FLAG,
        host->ioaddr + SDHSTS);

 if (intmask & SDHSTS_BLOCK_IRPT) {
  bcm2835_check_data_error(host, intmask);
  host->irq_block = 1;
  result = IRQ_WAKE_THREAD;
 }

 if (intmask & SDHSTS_BUSY_IRPT) {
  if (!bcm2835_check_cmd_error(host, intmask)) {
   host->irq_busy = 1;
   result = IRQ_WAKE_THREAD;
  } else {
   result = IRQ_HANDLED;
  }
 }





 if ((intmask & SDHSTS_DATA_FLAG) &&
     (host->hcfg & SDHCFG_DATA_IRPT_EN)) {
  bcm2835_data_irq(host, intmask);
  host->irq_data = 1;
  result = IRQ_WAKE_THREAD;
 }

 spin_unlock(&host->lock);

 return result;
}
