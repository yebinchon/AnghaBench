
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wil6210_vif {int ap_isolate; int mid; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct bss_parameters {int ap_isolate; } ;


 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int ,int ,int ) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_change_bss(struct wiphy *wiphy,
       struct net_device *dev,
       struct bss_parameters *params)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wil6210_vif *vif = ndev_to_vif(dev);

 if (params->ap_isolate >= 0) {
  wil_dbg_misc(wil, "change_bss: ap_isolate MID %d, %d => %d\n",
        vif->mid, vif->ap_isolate, params->ap_isolate);
  vif->ap_isolate = params->ap_isolate;
 }

 return 0;
}
