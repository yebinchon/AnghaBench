
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_p2p_info {int discovery_started; int discovery_timer; int discovery_expired_work; } ;
struct wil6210_vif {struct wil_p2p_info p2p; } ;
struct wil6210_priv {int mutex; } ;
struct cfg80211_scan_request {int ie; int ie_len; } ;


 int EBUSY ;
 int INIT_WORK (int *,int ) ;
 int P2P_DEFAULT_BI ;
 int P2P_DMG_SOCIAL_CHANNEL ;
 int P2P_SEARCH_DURATION_MS ;
 int P2P_WILDCARD_SSID ;
 int WMI_FRAME_PROBE_REQ ;
 int WMI_FRAME_PROBE_RESP ;
 scalar_t__ jiffies ;
 int lockdep_assert_held (int *) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int strlen (int ) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int ) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_p2p_search_expired ;
 int wmi_p2p_cfg (struct wil6210_vif*,int ,int ) ;
 int wmi_set_ie (struct wil6210_vif*,int ,int ,int ) ;
 int wmi_set_ssid (struct wil6210_vif*,int ,int ) ;
 int wmi_start_search (struct wil6210_vif*) ;
 int wmi_stop_discovery (struct wil6210_vif*) ;

int wil_p2p_search(struct wil6210_vif *vif,
     struct cfg80211_scan_request *request)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 int rc;
 struct wil_p2p_info *p2p = &vif->p2p;

 wil_dbg_misc(wil, "p2p_search: channel %d\n", P2P_DMG_SOCIAL_CHANNEL);

 lockdep_assert_held(&wil->mutex);

 if (p2p->discovery_started) {
  wil_err(wil, "search failed. discovery already ongoing\n");
  rc = -EBUSY;
  goto out;
 }

 rc = wmi_p2p_cfg(vif, P2P_DMG_SOCIAL_CHANNEL, P2P_DEFAULT_BI);
 if (rc) {
  wil_err(wil, "wmi_p2p_cfg failed\n");
  goto out;
 }

 rc = wmi_set_ssid(vif, strlen(P2P_WILDCARD_SSID), P2P_WILDCARD_SSID);
 if (rc) {
  wil_err(wil, "wmi_set_ssid failed\n");
  goto out_stop;
 }


 rc = wmi_set_ie(vif, WMI_FRAME_PROBE_REQ,
   request->ie_len, request->ie);
 if (rc) {
  wil_err(wil, "wmi_set_ie(WMI_FRAME_PROBE_REQ) failed\n");
  goto out_stop;
 }




 rc = wmi_set_ie(vif, WMI_FRAME_PROBE_RESP,
   request->ie_len, request->ie);
 if (rc) {
  wil_err(wil, "wmi_set_ie(WMI_FRAME_PROBE_RESP) failed\n");
  goto out_stop;
 }

 rc = wmi_start_search(vif);
 if (rc) {
  wil_err(wil, "wmi_start_search failed\n");
  goto out_stop;
 }

 p2p->discovery_started = 1;
 INIT_WORK(&p2p->discovery_expired_work, wil_p2p_search_expired);
 mod_timer(&p2p->discovery_timer,
    jiffies + msecs_to_jiffies(P2P_SEARCH_DURATION_MS));

out_stop:
 if (rc)
  wmi_stop_discovery(vif);

out:
 return rc;
}
