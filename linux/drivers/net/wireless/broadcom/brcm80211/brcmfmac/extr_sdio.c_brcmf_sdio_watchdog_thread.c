
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tickcnt; } ;
struct brcmf_sdio {int watchdog_wait; TYPE_1__ sdcnt; int sdiodev; } ;


 int SIGTERM ;
 int allow_signal (int ) ;
 int brcmf_sdio_bus_watchdog (struct brcmf_sdio*) ;
 int brcmf_sdiod_freezer_count (int ) ;
 int brcmf_sdiod_freezer_uncount (int ) ;
 int brcmf_sdiod_try_freeze (int ) ;
 scalar_t__ kthread_should_stop () ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int
brcmf_sdio_watchdog_thread(void *data)
{
 struct brcmf_sdio *bus = (struct brcmf_sdio *)data;
 int wait;

 allow_signal(SIGTERM);

 brcmf_sdiod_freezer_count(bus->sdiodev);
 while (1) {
  if (kthread_should_stop())
   break;
  brcmf_sdiod_freezer_uncount(bus->sdiodev);
  wait = wait_for_completion_interruptible(&bus->watchdog_wait);
  brcmf_sdiod_freezer_count(bus->sdiodev);
  brcmf_sdiod_try_freeze(bus->sdiodev);
  if (!wait) {
   brcmf_sdio_bus_watchdog(bus);

   bus->sdcnt.tickcnt++;
   reinit_completion(&bus->watchdog_wait);
  } else
   break;
 }
 return 0;
}
