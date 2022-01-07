
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; int detect_change; int detect; } ;


 int MMC_CAP_NEEDS_POLL ;
 scalar_t__ device_can_wakeup (int ) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_schedule_delayed_work (int *,unsigned long) ;
 int pm_wakeup_event (int ,int) ;

__attribute__((used)) static void _mmc_detect_change(struct mmc_host *host, unsigned long delay,
    bool cd_irq)
{




 if (cd_irq && !(host->caps & MMC_CAP_NEEDS_POLL) &&
  device_can_wakeup(mmc_dev(host)))
  pm_wakeup_event(mmc_dev(host), 5000);

 host->detect_change = 1;
 mmc_schedule_delayed_work(&host->detect, delay);
}
