
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct wil6210_priv {int mutex; int vif_mutex; scalar_t__ p2p_dev_started; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_p2p_stop_radio_operations (struct wil6210_priv*) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static void wil_cfg80211_stop_p2p_device(struct wiphy *wiphy,
      struct wireless_dev *wdev)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);

 if (!wil->p2p_dev_started)
  return;

 wil_dbg_misc(wil, "stop_p2p_device: entered\n");
 mutex_lock(&wil->mutex);
 mutex_lock(&wil->vif_mutex);
 wil_p2p_stop_radio_operations(wil);
 wil->p2p_dev_started = 0;
 mutex_unlock(&wil->vif_mutex);
 mutex_unlock(&wil->mutex);
}
