
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wil6210_priv {int mutex; int vif_mutex; int status; } ;
struct cfg80211_wowlan {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int ) ;
 int wil_abort_scan_all_vifs (struct wil6210_priv*,int) ;
 int wil_can_suspend (struct wil6210_priv*,int) ;
 int wil_dbg_pm (struct wil6210_priv*,char*) ;
 int wil_p2p_stop_radio_operations (struct wil6210_priv*) ;
 int wil_status_suspended ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_suspend(struct wiphy *wiphy,
    struct cfg80211_wowlan *wow)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 int rc;



 if (test_bit(wil_status_suspended, wil->status)) {
  wil_dbg_pm(wil, "trying to suspend while suspended\n");
  return 0;
 }

 rc = wil_can_suspend(wil, 0);
 if (rc)
  goto out;

 wil_dbg_pm(wil, "suspending\n");

 mutex_lock(&wil->mutex);
 mutex_lock(&wil->vif_mutex);
 wil_p2p_stop_radio_operations(wil);
 wil_abort_scan_all_vifs(wil, 1);
 mutex_unlock(&wil->vif_mutex);
 mutex_unlock(&wil->mutex);

out:
 return rc;
}
