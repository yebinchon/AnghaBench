
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_parameters {int sta_flags_set; } ;
struct net_device {int dummy; } ;
struct ath6kl_vif {scalar_t__ nw_type; int fw_vif_idx; } ;
struct ath6kl {int wmi; } ;


 scalar_t__ AP_NETWORK ;
 int BIT (int ) ;
 int CFG80211_STA_AP_MLME_CLIENT ;
 int EOPNOTSUPP ;
 int NL80211_STA_FLAG_AUTHORIZED ;
 int WMI_AP_MLME_AUTHORIZE ;
 int WMI_AP_MLME_UNAUTHORIZE ;
 struct ath6kl* ath6kl_priv (struct net_device*) ;
 int ath6kl_wmi_ap_set_mlme (int ,int ,int ,int const*,int ) ;
 int cfg80211_check_station_change (struct wiphy*,struct station_parameters*,int ) ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ath6kl_change_station(struct wiphy *wiphy, struct net_device *dev,
     const u8 *mac,
     struct station_parameters *params)
{
 struct ath6kl *ar = ath6kl_priv(dev);
 struct ath6kl_vif *vif = netdev_priv(dev);
 int err;

 if (vif->nw_type != AP_NETWORK)
  return -EOPNOTSUPP;

 err = cfg80211_check_station_change(wiphy, params,
         CFG80211_STA_AP_MLME_CLIENT);
 if (err)
  return err;

 if (params->sta_flags_set & BIT(NL80211_STA_FLAG_AUTHORIZED))
  return ath6kl_wmi_ap_set_mlme(ar->wmi, vif->fw_vif_idx,
           WMI_AP_MLME_AUTHORIZE, mac, 0);
 return ath6kl_wmi_ap_set_mlme(ar->wmi, vif->fw_vif_idx,
          WMI_AP_MLME_UNAUTHORIZE, mac, 0);
}
