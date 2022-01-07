
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int flags; int irq_lock; int base; TYPE_1__* mmc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int caps; } ;


 int CIRQ_EN ;
 int DLEV_DAT (int) ;
 int EBUSY ;
 int HSMMC_SDIO_IRQ_ENABLED ;
 int IE ;
 int ISE ;
 int MMC_CAP_SDIO_IRQ ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int ) ;
 int PSTATE ;
 int STAT ;
 int STAT_CLEAR ;
 int dev_dbg (struct device*,char*) ;
 struct omap_hsmmc_host* dev_get_drvdata (struct device*) ;
 int omap_hsmmc_context_save (struct omap_hsmmc_host*) ;
 int pinctrl_pm_select_idle_state (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int omap_hsmmc_runtime_suspend(struct device *dev)
{
 struct omap_hsmmc_host *host;
 unsigned long flags;
 int ret = 0;

 host = dev_get_drvdata(dev);
 omap_hsmmc_context_save(host);
 dev_dbg(dev, "disabled\n");

 spin_lock_irqsave(&host->irq_lock, flags);
 if ((host->mmc->caps & MMC_CAP_SDIO_IRQ) &&
     (host->flags & HSMMC_SDIO_IRQ_ENABLED)) {

  OMAP_HSMMC_WRITE(host->base, ISE, 0);
  OMAP_HSMMC_WRITE(host->base, IE, 0);

  if (!(OMAP_HSMMC_READ(host->base, PSTATE) & DLEV_DAT(1))) {





   dev_dbg(dev, "pending sdio irq, abort suspend\n");
   OMAP_HSMMC_WRITE(host->base, STAT, STAT_CLEAR);
   OMAP_HSMMC_WRITE(host->base, ISE, CIRQ_EN);
   OMAP_HSMMC_WRITE(host->base, IE, CIRQ_EN);
   pm_runtime_mark_last_busy(dev);
   ret = -EBUSY;
   goto abort;
  }

  pinctrl_pm_select_idle_state(dev);
 } else {
  pinctrl_pm_select_idle_state(dev);
 }

abort:
 spin_unlock_irqrestore(&host->irq_lock, flags);
 return ret;
}
