
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ gtk_len; int gtk; int assocresp_ies_len; int assocresp_ies; int proberesp_ies_len; int proberesp_ies; int proberesp_len; int proberesp; scalar_t__ ssid_len; int status; int mid; } ;
struct wil6210_priv {int mutex; int status; } ;
struct net_device {int dummy; } ;


 int WIL_DEFAULT_BUS_REQUEST_KBPS ;
 int WMI_MAX_KEY_LEN ;
 int __wil_down (struct wil6210_priv*) ;
 int clear_bit (int ,int ) ;
 int fw_recovery_idle ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int set_bit (int ,int ) ;
 int wil6210_bus_request (struct wil6210_priv*,int ) ;
 int wil_bcast_fini (struct wil6210_vif*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int ) ;
 int wil_has_other_active_ifaces (struct wil6210_priv*,struct net_device*,int,int) ;
 int wil_memdup_ie (int *,int *,int *,int ) ;
 int wil_set_recovery_state (struct wil6210_priv*,int ) ;
 int wil_status_resetting ;
 int wil_vif_ft_roam ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;
 int wmi_pcp_stop (struct wil6210_vif*) ;

__attribute__((used)) static int wil_cfg80211_stop_ap(struct wiphy *wiphy,
    struct net_device *ndev)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wil6210_vif *vif = ndev_to_vif(ndev);
 bool last;

 wil_dbg_misc(wil, "stop_ap, mid=%d\n", vif->mid);

 netif_carrier_off(ndev);
 last = !wil_has_other_active_ifaces(wil, ndev, 0, 1);
 if (last) {
  wil6210_bus_request(wil, WIL_DEFAULT_BUS_REQUEST_KBPS);
  wil_set_recovery_state(wil, fw_recovery_idle);
  set_bit(wil_status_resetting, wil->status);
 }

 mutex_lock(&wil->mutex);

 wmi_pcp_stop(vif);
 clear_bit(wil_vif_ft_roam, vif->status);
 vif->ssid_len = 0;
 wil_memdup_ie(&vif->proberesp, &vif->proberesp_len, ((void*)0), 0);
 wil_memdup_ie(&vif->proberesp_ies, &vif->proberesp_ies_len, ((void*)0), 0);
 wil_memdup_ie(&vif->assocresp_ies, &vif->assocresp_ies_len, ((void*)0), 0);
 memset(vif->gtk, 0, WMI_MAX_KEY_LEN);
 vif->gtk_len = 0;

 if (last)
  __wil_down(wil);
 else
  wil_bcast_fini(vif);

 mutex_unlock(&wil->mutex);

 return 0;
}
