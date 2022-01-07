
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_pcr {scalar_t__ state; int idle_work; TYPE_1__* ops; scalar_t__ remove_pci; } ;
struct TYPE_2__ {int (* enable_auto_blink ) (struct rtsx_pcr*) ;} ;


 scalar_t__ PDEV_STAT_RUN ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int) ;
 int rtsx_pm_full_on (struct rtsx_pcr*) ;
 int stub1 (struct rtsx_pcr*) ;
 int system_wq ;

void rtsx_pci_start_run(struct rtsx_pcr *pcr)
{

 if (pcr->remove_pci)
  return;

 if (pcr->state != PDEV_STAT_RUN) {
  pcr->state = PDEV_STAT_RUN;
  if (pcr->ops->enable_auto_blink)
   pcr->ops->enable_auto_blink(pcr);
  rtsx_pm_full_on(pcr);
 }

 mod_delayed_work(system_wq, &pcr->idle_work, msecs_to_jiffies(200));
}
