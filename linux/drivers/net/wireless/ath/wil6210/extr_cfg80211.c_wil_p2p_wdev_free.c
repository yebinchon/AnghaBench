
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct wil6210_priv {int vif_mutex; TYPE_1__* main_ndev; int radio_wdev; struct wireless_dev* p2p_wdev; } ;
struct TYPE_2__ {int ieee80211_ptr; } ;


 int cfg80211_unregister_wdev (struct wireless_dev*) ;
 int kfree (struct wireless_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void wil_p2p_wdev_free(struct wil6210_priv *wil)
{
 struct wireless_dev *p2p_wdev;

 mutex_lock(&wil->vif_mutex);
 p2p_wdev = wil->p2p_wdev;
 wil->p2p_wdev = ((void*)0);
 wil->radio_wdev = wil->main_ndev->ieee80211_ptr;
 mutex_unlock(&wil->vif_mutex);
 if (p2p_wdev) {
  cfg80211_unregister_wdev(p2p_wdev);
  kfree(p2p_wdev);
 }
}
