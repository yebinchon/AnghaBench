
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_del_parameters {int * mac; } ;
struct net_device {int dummy; } ;
struct ath6kl_vif {int fw_vif_idx; } ;
struct ath6kl {int wmi; } ;


 int WLAN_REASON_PREV_AUTH_NOT_VALID ;
 int WMI_AP_DEAUTH ;
 struct ath6kl* ath6kl_priv (struct net_device*) ;
 int ath6kl_wmi_ap_set_mlme (int ,int ,int ,int const*,int ) ;
 int * bcast_addr ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ath6kl_del_station(struct wiphy *wiphy, struct net_device *dev,
         struct station_del_parameters *params)
{
 struct ath6kl *ar = ath6kl_priv(dev);
 struct ath6kl_vif *vif = netdev_priv(dev);
 const u8 *addr = params->mac ? params->mac : bcast_addr;

 return ath6kl_wmi_ap_set_mlme(ar->wmi, vif->fw_vif_idx, WMI_AP_DEAUTH,
          addr, WLAN_REASON_PREV_AUTH_NOT_VALID);
}
