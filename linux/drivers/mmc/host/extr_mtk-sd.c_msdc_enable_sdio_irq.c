
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {int dev; int lock; } ;
struct mmc_host {int dummy; } ;


 int __msdc_enable_sdio_irq (struct msdc_host*,int) ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
{
 unsigned long flags;
 struct msdc_host *host = mmc_priv(mmc);

 spin_lock_irqsave(&host->lock, flags);
 __msdc_enable_sdio_irq(host, enb);
 spin_unlock_irqrestore(&host->lock, flags);

 if (enb)
  pm_runtime_get_noresume(host->dev);
 else
  pm_runtime_put_noidle(host->dev);
}
