
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_host {int thread_isr; struct mmc_host* mmc; int lock; } ;
struct mmc_host {TYPE_1__* ops; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* card_event ) (struct mmc_host*) ;} ;


 int IRQ_HANDLED ;
 int SDHCI_INT_CARD_INSERT ;
 int SDHCI_INT_CARD_REMOVE ;
 int mmc_detect_change (struct mmc_host*,int ) ;
 int msecs_to_jiffies (int) ;
 int sdhci_request_done (struct sdhci_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mmc_host*) ;

__attribute__((used)) static irqreturn_t sdhci_thread_irq(int irq, void *dev_id)
{
 struct sdhci_host *host = dev_id;
 unsigned long flags;
 u32 isr;

 while (!sdhci_request_done(host))
  ;

 spin_lock_irqsave(&host->lock, flags);
 isr = host->thread_isr;
 host->thread_isr = 0;
 spin_unlock_irqrestore(&host->lock, flags);

 if (isr & (SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE)) {
  struct mmc_host *mmc = host->mmc;

  mmc->ops->card_event(mmc);
  mmc_detect_change(mmc, msecs_to_jiffies(200));
 }

 return IRQ_HANDLED;
}
