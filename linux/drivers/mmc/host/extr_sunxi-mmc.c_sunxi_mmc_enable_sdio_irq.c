
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sunxi_mmc_host {TYPE_1__* mmc; int lock; scalar_t__ sdio_imask; int dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int parent; } ;


 int REG_IMASK ;
 scalar_t__ SDXC_SDIO_INTERRUPT ;
 struct sunxi_mmc_host* mmc_priv (struct mmc_host*) ;
 scalar_t__ mmc_readl (struct sunxi_mmc_host*,int ) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,scalar_t__) ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sunxi_mmc_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct sunxi_mmc_host *host = mmc_priv(mmc);
 unsigned long flags;
 u32 imask;

 if (enable)
  pm_runtime_get_noresume(host->dev);

 spin_lock_irqsave(&host->lock, flags);

 imask = mmc_readl(host, REG_IMASK);
 if (enable) {
  host->sdio_imask = SDXC_SDIO_INTERRUPT;
  imask |= SDXC_SDIO_INTERRUPT;
 } else {
  host->sdio_imask = 0;
  imask &= ~SDXC_SDIO_INTERRUPT;
 }
 mmc_writel(host, REG_IMASK, imask);
 spin_unlock_irqrestore(&host->lock, flags);

 if (!enable)
  pm_runtime_put_noidle(host->mmc->parent);
}
