
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int radio_enabled; int txpower_adjust_work; int mutex; int beacon_update_trigger; struct b43_wldev* current_dev; } ;


 scalar_t__ B43_STAT_STARTED ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43_wireless_core_exit (struct b43_wldev*) ;
 struct b43_wldev* b43_wireless_core_stop (struct b43_wldev*) ;
 int cancel_work_sync (int *) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void b43_op_stop(struct ieee80211_hw *hw)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev = wl->current_dev;

 cancel_work_sync(&(wl->beacon_update_trigger));

 if (!dev)
  goto out;

 mutex_lock(&wl->mutex);
 if (b43_status(dev) >= B43_STAT_STARTED) {
  dev = b43_wireless_core_stop(dev);
  if (!dev)
   goto out_unlock;
 }
 b43_wireless_core_exit(dev);
 wl->radio_enabled = 0;

out_unlock:
 mutex_unlock(&wl->mutex);
out:
 cancel_work_sync(&(wl->txpower_adjust_work));
}
