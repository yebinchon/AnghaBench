
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {int restart_work; TYPE_1__* wl; } ;
struct TYPE_2__ {int hw; } ;


 scalar_t__ B43_STAT_INITIALIZED ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43info (TYPE_1__*,char*,char const*) ;
 int ieee80211_queue_work (int ,int *) ;

void b43_controller_restart(struct b43_wldev *dev, const char *reason)
{

 if (b43_status(dev) < B43_STAT_INITIALIZED)
  return;
 b43info(dev->wl, "Controller RESET (%s) ...\n", reason);
 ieee80211_queue_work(dev->wl->hw, &dev->restart_work);
}
