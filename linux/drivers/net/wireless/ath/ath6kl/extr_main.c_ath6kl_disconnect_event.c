
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_7__ {int ch; } ;
struct ath6kl_vif {scalar_t__ nw_type; int fw_vif_idx; int reconnect_flag; scalar_t__ bss_ch; int bssid; TYPE_3__* ndev; int if_lock; int flags; int disconnect_timer; TYPE_2__* aggr_cntxt; int wep_key_list; TYPE_1__ profile; struct ath6kl* ar; } ;
struct ath6kl {int want_ch_switch; scalar_t__ sta_list_index; scalar_t__ user_key_ctrl; int last_ch; int wmi; int flag; int usr_bss_filter; int mcastpsq_lock; int mcastpsq; } ;
struct TYPE_9__ {int dev_addr; } ;
struct TYPE_8__ {int aggr_conn; } ;


 scalar_t__ AP_NETWORK ;
 scalar_t__ ASSOC_FAILED ;
 int ATH6KL_DBG_WLAN_CFG ;
 scalar_t__ BSS_DISCONNECTED ;
 int CONNECTED ;
 int CONNECT_PEND ;
 scalar_t__ CSERV_DISCONNECT ;
 scalar_t__ DISCONNECT_CMD ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MCAST_AID ;
 int NL80211_CONN_FAIL_BLOCKED_CLIENT ;
 int NL80211_CONN_FAIL_MAX_CLIENTS ;
 int NONE_BSS_FILTER ;
 int WMI_AP_REASON_ACL ;
 int WMI_AP_REASON_MAX_STA ;
 int WMI_AP_REASON_STA_ROAM ;
 int WMI_READY ;
 int aggr_reset_state (int ) ;
 int ath6kl_cfg80211_disconnect_event (struct ath6kl_vif*,scalar_t__,scalar_t__*,scalar_t__,scalar_t__*,int) ;
 int ath6kl_check_ch_switch (struct ath6kl*,int ) ;
 int ath6kl_dbg (int ,char*,scalar_t__) ;
 int ath6kl_remove_sta (struct ath6kl*,scalar_t__*,int) ;
 int ath6kl_tx_data_cleanup (struct ath6kl*) ;
 int ath6kl_wmi_bssfilter_cmd (int ,int,int ,int ) ;
 int ath6kl_wmi_set_pvb_cmd (int ,int,int ,int ) ;
 int cfg80211_conn_failed (TYPE_3__*,scalar_t__*,int ,int ) ;
 int cfg80211_del_sta (TYPE_3__*,scalar_t__*,int ) ;
 int clear_bit (int ,int *) ;
 int del_timer (int *) ;
 int is_broadcast_ether_addr (scalar_t__*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,scalar_t__*,int ) ;
 int memset (int ,int ,int) ;
 int netif_carrier_off (TYPE_3__*) ;
 int netif_stop_queue (TYPE_3__*) ;
 int set_bit (int ,int *) ;
 int skb_queue_purge (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void ath6kl_disconnect_event(struct ath6kl_vif *vif, u8 reason, u8 *bssid,
        u8 assoc_resp_len, u8 *assoc_info,
        u16 prot_reason_status)
{
 struct ath6kl *ar = vif->ar;

 if (vif->nw_type == AP_NETWORK) {

  if (reason == BSS_DISCONNECTED &&
      prot_reason_status == WMI_AP_REASON_STA_ROAM) {
   ar->want_ch_switch |= 1 << vif->fw_vif_idx;

   ar->last_ch = le16_to_cpu(vif->profile.ch);
  }

  if (prot_reason_status == WMI_AP_REASON_MAX_STA) {

   cfg80211_conn_failed(vif->ndev, bssid,
          NL80211_CONN_FAIL_MAX_CLIENTS,
          GFP_KERNEL);
  }

  if (prot_reason_status == WMI_AP_REASON_ACL) {

   cfg80211_conn_failed(vif->ndev, bssid,
          NL80211_CONN_FAIL_BLOCKED_CLIENT,
          GFP_KERNEL);
  }

  if (!ath6kl_remove_sta(ar, bssid, prot_reason_status))
   return;


  if (ar->sta_list_index == 0) {
   spin_lock_bh(&ar->mcastpsq_lock);
   skb_queue_purge(&ar->mcastpsq);
   spin_unlock_bh(&ar->mcastpsq_lock);


   if (test_bit(WMI_READY, &ar->flag))
    ath6kl_wmi_set_pvb_cmd(ar->wmi, vif->fw_vif_idx,
             MCAST_AID, 0);
  }

  if (!is_broadcast_ether_addr(bssid)) {

   cfg80211_del_sta(vif->ndev, bssid, GFP_KERNEL);
  }

  if (memcmp(vif->ndev->dev_addr, bssid, ETH_ALEN) == 0) {
   memset(vif->wep_key_list, 0, sizeof(vif->wep_key_list));
   clear_bit(CONNECTED, &vif->flags);
  }
  return;
 }

 ath6kl_cfg80211_disconnect_event(vif, reason, bssid,
      assoc_resp_len, assoc_info,
      prot_reason_status);

 aggr_reset_state(vif->aggr_cntxt->aggr_conn);

 del_timer(&vif->disconnect_timer);

 ath6kl_dbg(ATH6KL_DBG_WLAN_CFG, "disconnect reason is %d\n", reason);






 if (reason == DISCONNECT_CMD) {
  if (!ar->usr_bss_filter && test_bit(WMI_READY, &ar->flag))
   ath6kl_wmi_bssfilter_cmd(ar->wmi, vif->fw_vif_idx,
       NONE_BSS_FILTER, 0);
 } else {
  set_bit(CONNECT_PEND, &vif->flags);
  if (((reason == ASSOC_FAILED) &&
       (prot_reason_status == 0x11)) ||
      ((reason == ASSOC_FAILED) && (prot_reason_status == 0x0) &&
       (vif->reconnect_flag == 1))) {
   set_bit(CONNECTED, &vif->flags);
   return;
  }
 }


 ath6kl_check_ch_switch(ar, ar->last_ch);


 spin_lock_bh(&vif->if_lock);
 clear_bit(CONNECTED, &vif->flags);
 netif_carrier_off(vif->ndev);
 spin_unlock_bh(&vif->if_lock);

 if ((reason != CSERV_DISCONNECT) || (vif->reconnect_flag != 1))
  vif->reconnect_flag = 0;

 if (reason != CSERV_DISCONNECT)
  ar->user_key_ctrl = 0;

 netif_stop_queue(vif->ndev);
 memset(vif->bssid, 0, sizeof(vif->bssid));
 vif->bss_ch = 0;

 ath6kl_tx_data_cleanup(ar);
}
