
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_scan_info {int aborted; } ;
struct ath6kl_vif {int nw_type; int* bssid; int * scan_req; int disconnect_timer; int flags; int ndev; } ;


 int AP_NETWORK ;
 int CONNECTED ;
 int CONNECT_PEND ;
 int DISCONNECT_CMD ;
 int WLAN_ENABLED ;
 int ath6kl_cfg80211_sta_bmiss_enhance (struct ath6kl_vif*,int) ;
 int ath6kl_disconnect (struct ath6kl_vif*) ;
 int ath6kl_disconnect_event (struct ath6kl_vif*,int ,int*,int ,int *,int ) ;
 int cfg80211_scan_done (int *,struct cfg80211_scan_info*) ;
 int clear_bit (int ,int *) ;
 int del_timer (int *) ;
 int netif_stop_queue (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void ath6kl_cfg80211_vif_stop(struct ath6kl_vif *vif, bool wmi_ready)
{
 static u8 bcast_mac[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 bool discon_issued;

 netif_stop_queue(vif->ndev);

 clear_bit(WLAN_ENABLED, &vif->flags);

 if (wmi_ready) {
  discon_issued = test_bit(CONNECTED, &vif->flags) ||
    test_bit(CONNECT_PEND, &vif->flags);
  ath6kl_disconnect(vif);
  del_timer(&vif->disconnect_timer);

  if (discon_issued)
   ath6kl_disconnect_event(vif, DISCONNECT_CMD,
      (vif->nw_type & AP_NETWORK) ?
      bcast_mac : vif->bssid,
      0, ((void*)0), 0);
 }

 if (vif->scan_req) {
  struct cfg80211_scan_info info = {
   .aborted = 1,
  };

  cfg80211_scan_done(vif->scan_req, &info);
  vif->scan_req = ((void*)0);
 }


 ath6kl_cfg80211_sta_bmiss_enhance(vif, 0);
}
