
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wireless_dev {int beacon_interval; int ssid_len; int ssid; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int privacy; int pbss; int hidden_ssid; int wmi_edmg_channel; int channel; int ssid_len; int ssid; int mid; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_beacon_data {int tail_len; scalar_t__ tail; } ;


 int WLAN_EID_RSN ;
 int _wil_cfg80211_set_ies (struct wil6210_vif*,struct cfg80211_beacon_data*) ;
 int _wil_cfg80211_start_ap (struct wiphy*,struct net_device*,int ,int ,int,int ,int ,int ,struct cfg80211_beacon_data*,int ,int ) ;
 scalar_t__ cfg80211_find_ie (int ,scalar_t__,int ) ;
 int memcpy (int ,int ,int ) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int,...) ;
 int wil_print_bcon_data (struct cfg80211_beacon_data*) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_change_beacon(struct wiphy *wiphy,
          struct net_device *ndev,
          struct cfg80211_beacon_data *bcon)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wireless_dev *wdev = ndev->ieee80211_ptr;
 struct wil6210_vif *vif = ndev_to_vif(ndev);
 int rc;
 u32 privacy = 0;

 wil_dbg_misc(wil, "change_beacon, mid=%d\n", vif->mid);
 wil_print_bcon_data(bcon);

 if (bcon->tail &&
     cfg80211_find_ie(WLAN_EID_RSN, bcon->tail,
        bcon->tail_len))
  privacy = 1;

 memcpy(vif->ssid, wdev->ssid, wdev->ssid_len);
 vif->ssid_len = wdev->ssid_len;


 if (vif->privacy != privacy) {
  wil_dbg_misc(wil, "privacy changed %d=>%d. Restarting AP\n",
        vif->privacy, privacy);

  rc = _wil_cfg80211_start_ap(wiphy, ndev, vif->ssid,
         vif->ssid_len, privacy,
         wdev->beacon_interval,
         vif->channel,
         vif->wmi_edmg_channel, bcon,
         vif->hidden_ssid,
         vif->pbss);
 } else {
  rc = _wil_cfg80211_set_ies(vif, bcon);
 }

 return rc;
}
