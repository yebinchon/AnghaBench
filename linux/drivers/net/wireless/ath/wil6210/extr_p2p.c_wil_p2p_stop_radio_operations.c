
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wil_p2p_info {int listen_chan; int cookie; int discovery_started; } ;
struct wil6210_vif {TYPE_2__* scan_request; struct wil_p2p_info p2p; } ;
struct wil6210_priv {scalar_t__ radio_wdev; scalar_t__ p2p_wdev; TYPE_1__* main_ndev; int vif_mutex; int mutex; } ;
struct cfg80211_scan_info {int aborted; } ;
struct TYPE_4__ {scalar_t__ wdev; } ;
struct TYPE_3__ {scalar_t__ ieee80211_ptr; } ;


 int GFP_KERNEL ;
 int cfg80211_remain_on_channel_expired (scalar_t__,int ,int *,int ) ;
 int cfg80211_scan_done (TYPE_2__*,struct cfg80211_scan_info*) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wil6210_vif* ndev_to_vif (TYPE_1__*) ;
 int wil_abort_scan (struct wil6210_vif*,int) ;
 int wil_p2p_stop_discovery (struct wil6210_vif*) ;

void wil_p2p_stop_radio_operations(struct wil6210_priv *wil)
{
 struct wil6210_vif *vif = ndev_to_vif(wil->main_ndev);
 struct wil_p2p_info *p2p = &vif->p2p;
 struct cfg80211_scan_info info = {
  .aborted = 1,
 };

 lockdep_assert_held(&wil->mutex);
 lockdep_assert_held(&wil->vif_mutex);

 if (wil->radio_wdev != wil->p2p_wdev)
  goto out;

 if (!p2p->discovery_started) {

  if (vif->scan_request &&
      vif->scan_request->wdev == wil->p2p_wdev)
   wil_abort_scan(vif, 1);
  goto out;
 }


 mutex_unlock(&wil->vif_mutex);
 wil_p2p_stop_discovery(vif);
 mutex_lock(&wil->vif_mutex);

 if (vif->scan_request) {

  cfg80211_scan_done(vif->scan_request, &info);
  vif->scan_request = ((void*)0);
 } else {

  cfg80211_remain_on_channel_expired(wil->radio_wdev,
         p2p->cookie,
         &p2p->listen_chan,
         GFP_KERNEL);
 }

out:
 wil->radio_wdev = wil->main_ndev->ieee80211_ptr;
}
