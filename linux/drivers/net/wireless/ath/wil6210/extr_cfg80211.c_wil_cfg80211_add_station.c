
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;
struct station_parameters {int aid; int sta_flags_set; int sta_flags_mask; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int WIL_MAX_DMG_AID ;
 int disable_ap_sme ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int const*,int ,int ,int ,int ) ;
 int wil_err (struct wil6210_priv*,char*) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;
 int wmi_new_sta (struct wil6210_vif*,int const*,int ) ;

__attribute__((used)) static int wil_cfg80211_add_station(struct wiphy *wiphy,
        struct net_device *dev,
        const u8 *mac,
        struct station_parameters *params)
{
 struct wil6210_vif *vif = ndev_to_vif(dev);
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);

 wil_dbg_misc(wil, "add station %pM aid %d mid %d mask 0x%x set 0x%x\n",
       mac, params->aid, vif->mid,
       params->sta_flags_mask, params->sta_flags_set);

 if (!disable_ap_sme) {
  wil_err(wil, "not supported with AP SME enabled\n");
  return -EOPNOTSUPP;
 }

 if (params->aid > WIL_MAX_DMG_AID) {
  wil_err(wil, "invalid aid\n");
  return -EINVAL;
 }

 return wmi_new_sta(vif, mac, params->aid);
}
