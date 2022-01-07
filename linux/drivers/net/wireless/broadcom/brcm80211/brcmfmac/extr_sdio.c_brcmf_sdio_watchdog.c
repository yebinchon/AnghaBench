
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct brcmf_sdio {int timer; scalar_t__ wd_active; int watchdog_wait; scalar_t__ watchdog_tsk; } ;


 scalar_t__ BRCMF_WD_POLL ;
 struct brcmf_sdio* bus ;
 int complete (int *) ;
 struct brcmf_sdio* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer ;

__attribute__((used)) static void
brcmf_sdio_watchdog(struct timer_list *t)
{
 struct brcmf_sdio *bus = from_timer(bus, t, timer);

 if (bus->watchdog_tsk) {
  complete(&bus->watchdog_wait);

  if (bus->wd_active)
   mod_timer(&bus->timer,
      jiffies + BRCMF_WD_POLL);
 }
}
