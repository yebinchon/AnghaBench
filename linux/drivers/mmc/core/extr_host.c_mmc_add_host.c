
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; int led; int class_dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int enable_sdio_irq; } ;


 int MMC_CAP_SDIO_IRQ ;
 int WARN_ON (int) ;
 int dev_name (int *) ;
 int device_add (int *) ;
 int led_trigger_register_simple (int ,int *) ;
 int mmc_add_host_debugfs (struct mmc_host*) ;
 int mmc_register_pm_notifier (struct mmc_host*) ;
 int mmc_start_host (struct mmc_host*) ;

int mmc_add_host(struct mmc_host *host)
{
 int err;

 WARN_ON((host->caps & MMC_CAP_SDIO_IRQ) &&
  !host->ops->enable_sdio_irq);

 err = device_add(&host->class_dev);
 if (err)
  return err;

 led_trigger_register_simple(dev_name(&host->class_dev), &host->led);





 mmc_start_host(host);
 mmc_register_pm_notifier(host);

 return 0;
}
