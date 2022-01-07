
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {int lock; TYPE_1__* variant; scalar_t__ base; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int busy_detect_flag; } ;


 scalar_t__ MMCISTATUS ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mmci_card_busy(struct mmc_host *mmc)
{
 struct mmci_host *host = mmc_priv(mmc);
 unsigned long flags;
 int busy = 0;

 spin_lock_irqsave(&host->lock, flags);
 if (readl(host->base + MMCISTATUS) & host->variant->busy_detect_flag)
  busy = 1;
 spin_unlock_irqrestore(&host->lock, flags);

 return busy;
}
