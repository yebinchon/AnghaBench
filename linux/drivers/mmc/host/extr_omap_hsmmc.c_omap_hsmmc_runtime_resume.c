
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int flags; int irq_lock; int dev; int base; TYPE_1__* mmc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int caps; } ;


 int CIRQ_EN ;
 int HSMMC_SDIO_IRQ_ENABLED ;
 int IE ;
 int ISE ;
 int MMC_CAP_SDIO_IRQ ;
 int OMAP_HSMMC_WRITE (int ,int ,int ) ;
 int STAT ;
 int STAT_CLEAR ;
 int dev_dbg (struct device*,char*) ;
 struct omap_hsmmc_host* dev_get_drvdata (struct device*) ;
 int omap_hsmmc_context_restore (struct omap_hsmmc_host*) ;
 int pinctrl_pm_select_default_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int omap_hsmmc_runtime_resume(struct device *dev)
{
 struct omap_hsmmc_host *host;
 unsigned long flags;

 host = dev_get_drvdata(dev);
 omap_hsmmc_context_restore(host);
 dev_dbg(dev, "enabled\n");

 spin_lock_irqsave(&host->irq_lock, flags);
 if ((host->mmc->caps & MMC_CAP_SDIO_IRQ) &&
     (host->flags & HSMMC_SDIO_IRQ_ENABLED)) {

  pinctrl_pm_select_default_state(host->dev);


  OMAP_HSMMC_WRITE(host->base, STAT, STAT_CLEAR);
  OMAP_HSMMC_WRITE(host->base, ISE, CIRQ_EN);
  OMAP_HSMMC_WRITE(host->base, IE, CIRQ_EN);
 } else {
  pinctrl_pm_select_default_state(host->dev);
 }
 spin_unlock_irqrestore(&host->irq_lock, flags);
 return 0;
}
