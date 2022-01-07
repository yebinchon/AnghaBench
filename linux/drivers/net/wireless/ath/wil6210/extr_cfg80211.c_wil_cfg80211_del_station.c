
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int mutex; } ;
struct station_del_parameters {int reason_code; int mac; } ;
struct net_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int wil6210_disconnect (struct wil6210_vif*,int ,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int ,int ,int ) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_del_station(struct wiphy *wiphy,
        struct net_device *dev,
        struct station_del_parameters *params)
{
 struct wil6210_vif *vif = ndev_to_vif(dev);
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);

 wil_dbg_misc(wil, "del_station: %pM, reason=%d mid=%d\n",
       params->mac, params->reason_code, vif->mid);

 mutex_lock(&wil->mutex);
 wil6210_disconnect(vif, params->mac, params->reason_code);
 mutex_unlock(&wil->mutex);

 return 0;
}
