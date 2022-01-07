
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u32 ;
typedef scalar_t__ u16 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int bi; size_t ssid_len; int ssid; void* pbss; void* hidden_ssid; void* wmi_edmg_channel; void* channel; void* privacy; int status; int mid; } ;
struct wil6210_priv {int mutex; int fw_capabilities; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_beacon_data {int probe_resp_len; int probe_resp; } ;


 int ENOTSUPP ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 int WIL_DEFAULT_BUS_REQUEST_KBPS ;
 int WIL_MAX_BUS_REQUEST_KBPS ;
 int WLAN_EID_MOBILITY_DOMAIN ;
 int WMI_FW_CAPABILITY_FT_ROAMING ;
 void* WMI_NETTYPE_P2P ;
 int __wil_down (struct wil6210_priv*) ;
 int __wil_up (struct wil6210_priv*) ;
 void** _wil_cfg80211_get_proberesp_ies (int ,int ,scalar_t__*) ;
 int _wil_cfg80211_set_ies (struct wil6210_vif*,struct cfg80211_beacon_data*) ;
 scalar_t__ cfg80211_find_ie (int ,void**,scalar_t__) ;
 int fw_recovery_idle ;
 int memcpy (int ,void* const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int set_bit (int ,int ) ;
 int test_bit (int ,int ) ;
 int wil6210_bus_request (struct wil6210_priv*,int ) ;
 int wil_bcast_init (struct wil6210_vif*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int ,void*) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_has_other_active_ifaces (struct wil6210_priv*,struct net_device*,int,int) ;
 void* wil_iftype_nl2wmi (scalar_t__) ;
 int wil_set_recovery_state (struct wil6210_priv*,int ) ;
 int wil_vif_ft_roam ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;
 int wmi_pcp_start (struct wil6210_vif*,int,void*,void*,void*,void*,void*) ;
 int wmi_pcp_stop (struct wil6210_vif*) ;
 int wmi_set_ssid (struct wil6210_vif*,size_t,void* const*) ;

__attribute__((used)) static int _wil_cfg80211_start_ap(struct wiphy *wiphy,
      struct net_device *ndev,
      const u8 *ssid, size_t ssid_len, u32 privacy,
      int bi, u8 chan, u8 wmi_edmg_channel,
      struct cfg80211_beacon_data *bcon,
      u8 hidden_ssid, u32 pbss)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wil6210_vif *vif = ndev_to_vif(ndev);
 int rc;
 struct wireless_dev *wdev = ndev->ieee80211_ptr;
 u8 wmi_nettype = wil_iftype_nl2wmi(wdev->iftype);
 u8 is_go = (wdev->iftype == NL80211_IFTYPE_P2P_GO);
 u16 proberesp_len = 0;
 u8 *proberesp;
 bool ft = 0;

 if (pbss)
  wmi_nettype = WMI_NETTYPE_P2P;

 wil_dbg_misc(wil, "start_ap: mid=%d, is_go=%d\n", vif->mid, is_go);
 if (is_go && !pbss) {
  wil_err(wil, "P2P GO must be in PBSS\n");
  return -ENOTSUPP;
 }

 wil_set_recovery_state(wil, fw_recovery_idle);

 proberesp = _wil_cfg80211_get_proberesp_ies(bcon->probe_resp,
          bcon->probe_resp_len,
          &proberesp_len);

 if ((proberesp && proberesp_len > 0 &&
      cfg80211_find_ie(WLAN_EID_MOBILITY_DOMAIN,
         proberesp,
         proberesp_len)))
  ft = 1;

 if (ft) {
  if (!test_bit(WMI_FW_CAPABILITY_FT_ROAMING,
         wil->fw_capabilities)) {
   wil_err(wil, "FW does not support FT roaming\n");
   return -ENOTSUPP;
  }
  set_bit(wil_vif_ft_roam, vif->status);
 }

 mutex_lock(&wil->mutex);

 if (!wil_has_other_active_ifaces(wil, ndev, 1, 0)) {
  __wil_down(wil);
  rc = __wil_up(wil);
  if (rc)
   goto out;
 }

 rc = wmi_set_ssid(vif, ssid_len, ssid);
 if (rc)
  goto out;

 rc = _wil_cfg80211_set_ies(vif, bcon);
 if (rc)
  goto out;

 vif->privacy = privacy;
 vif->channel = chan;
 vif->wmi_edmg_channel = wmi_edmg_channel;
 vif->hidden_ssid = hidden_ssid;
 vif->pbss = pbss;
 vif->bi = bi;
 memcpy(vif->ssid, ssid, ssid_len);
 vif->ssid_len = ssid_len;

 netif_carrier_on(ndev);
 if (!wil_has_other_active_ifaces(wil, ndev, 0, 1))
  wil6210_bus_request(wil, WIL_MAX_BUS_REQUEST_KBPS);

 rc = wmi_pcp_start(vif, bi, wmi_nettype, chan, wmi_edmg_channel,
      hidden_ssid, is_go);
 if (rc)
  goto err_pcp_start;

 rc = wil_bcast_init(vif);
 if (rc)
  goto err_bcast;

 goto out;

err_bcast:
 wmi_pcp_stop(vif);
err_pcp_start:
 netif_carrier_off(ndev);
 if (!wil_has_other_active_ifaces(wil, ndev, 0, 1))
  wil6210_bus_request(wil, WIL_DEFAULT_BUS_REQUEST_KBPS);
out:
 mutex_unlock(&wil->mutex);
 return rc;
}
