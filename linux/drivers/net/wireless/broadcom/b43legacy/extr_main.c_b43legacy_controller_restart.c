
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_wldev {int restart_work; TYPE_1__* wl; } ;
struct TYPE_2__ {int hw; } ;


 scalar_t__ B43legacy_STAT_INITIALIZED ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacyinfo (TYPE_1__*,char*,char const*) ;
 int ieee80211_queue_work (int ,int *) ;

void b43legacy_controller_restart(struct b43legacy_wldev *dev,
      const char *reason)
{

 if (b43legacy_status(dev) < B43legacy_STAT_INITIALIZED)
  return;
 b43legacyinfo(dev->wl, "Controller RESET (%s) ...\n", reason);
 ieee80211_queue_work(dev->wl->hw, &dev->restart_work);
}
