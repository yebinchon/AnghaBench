
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expires; } ;
struct brcmf_sdio {int wd_active; TYPE_2__ timer; TYPE_1__* sdiodev; } ;
struct TYPE_5__ {scalar_t__ state; } ;


 scalar_t__ BRCMF_SDIOD_DATA ;
 scalar_t__ BRCMF_WD_POLL ;
 int add_timer (TYPE_2__*) ;
 int del_timer_sync (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_2__*,scalar_t__) ;

void brcmf_sdio_wd_timer(struct brcmf_sdio *bus, bool active)
{

 if (!active && bus->wd_active) {
  del_timer_sync(&bus->timer);
  bus->wd_active = 0;
  return;
 }


 if (bus->sdiodev->state != BRCMF_SDIOD_DATA)
  return;

 if (active) {
  if (!bus->wd_active) {



   bus->timer.expires = jiffies + BRCMF_WD_POLL;
   add_timer(&bus->timer);
   bus->wd_active = 1;
  } else {

   mod_timer(&bus->timer, jiffies + BRCMF_WD_POLL);
  }
 }
}
