
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {int radio_enabled; int mutex; int beacon_update_trigger; struct b43legacy_wldev* current_dev; } ;


 scalar_t__ B43legacy_STAT_STARTED ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacy_wireless_core_exit (struct b43legacy_wldev*) ;
 int b43legacy_wireless_core_stop (struct b43legacy_wldev*) ;
 int cancel_work_sync (int *) ;
 struct b43legacy_wl* hw_to_b43legacy_wl (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void b43legacy_op_stop(struct ieee80211_hw *hw)
{
 struct b43legacy_wl *wl = hw_to_b43legacy_wl(hw);
 struct b43legacy_wldev *dev = wl->current_dev;

 cancel_work_sync(&(wl->beacon_update_trigger));

 mutex_lock(&wl->mutex);
 if (b43legacy_status(dev) >= B43legacy_STAT_STARTED)
  b43legacy_wireless_core_stop(dev);
 b43legacy_wireless_core_exit(dev);
 wl->radio_enabled = 0;
 mutex_unlock(&wl->mutex);
}
