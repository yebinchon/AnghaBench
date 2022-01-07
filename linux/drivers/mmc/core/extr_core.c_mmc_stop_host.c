
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cd_irq; } ;
struct mmc_host {int rescan_disable; TYPE_1__* bus_ops; int bus_dead; scalar_t__ pm_flags; int detect; TYPE_2__ slot; } ;
struct TYPE_3__ {int (* remove ) (struct mmc_host*) ;} ;


 int cancel_delayed_work_sync (int *) ;
 int disable_irq (scalar_t__) ;
 int mmc_bus_get (struct mmc_host*) ;
 int mmc_bus_put (struct mmc_host*) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_detach_bus (struct mmc_host*) ;
 int mmc_gpio_set_cd_wake (struct mmc_host*,int) ;
 int mmc_power_off (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int stub1 (struct mmc_host*) ;

void mmc_stop_host(struct mmc_host *host)
{
 if (host->slot.cd_irq >= 0) {
  mmc_gpio_set_cd_wake(host, 0);
  disable_irq(host->slot.cd_irq);
 }

 host->rescan_disable = 1;
 cancel_delayed_work_sync(&host->detect);


 host->pm_flags = 0;

 mmc_bus_get(host);
 if (host->bus_ops && !host->bus_dead) {

  host->bus_ops->remove(host);
  mmc_claim_host(host);
  mmc_detach_bus(host);
  mmc_power_off(host);
  mmc_release_host(host);
  mmc_bus_put(host);
  return;
 }
 mmc_bus_put(host);

 mmc_claim_host(host);
 mmc_power_off(host);
 mmc_release_host(host);
}
