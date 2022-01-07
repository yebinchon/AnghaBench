
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl_vif {int sme_state; int fw_vif_idx; TYPE_1__* ar; int ndev; int flags; int bssid; } ;
struct TYPE_2__ {scalar_t__ state; int wmi; } ;


 scalar_t__ ATH6KL_STATE_RECOVERY ;
 int CONNECTED ;
 int CONNECT_PEND ;
 int GFP_KERNEL ;



 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int ath6kl_cfg80211_scan_complete_event (struct ath6kl_vif*,int) ;
 int ath6kl_cfg80211_sscan_disable (struct ath6kl_vif*) ;
 int ath6kl_warn (char*) ;
 int ath6kl_wmi_disconnect_cmd (int ,int ) ;
 scalar_t__ ath6kl_wmi_scanparams_cmd (int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int cfg80211_connect_result (int ,int ,int *,int ,int *,int ,int ,int ) ;
 int cfg80211_disconnected (int ,int ,int *,int ,int,int ) ;
 int clear_bit (int ,int *) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void ath6kl_cfg80211_stop(struct ath6kl_vif *vif)
{
 ath6kl_cfg80211_sscan_disable(vif);

 switch (vif->sme_state) {
 case 128:
  break;
 case 129:
  cfg80211_connect_result(vif->ndev, vif->bssid, ((void*)0), 0,
     ((void*)0), 0,
     WLAN_STATUS_UNSPECIFIED_FAILURE,
     GFP_KERNEL);
  break;
 case 130:
  cfg80211_disconnected(vif->ndev, 0, ((void*)0), 0, 1, GFP_KERNEL);
  break;
 }

 if (vif->ar->state != ATH6KL_STATE_RECOVERY &&
     (test_bit(CONNECTED, &vif->flags) ||
     test_bit(CONNECT_PEND, &vif->flags)))
  ath6kl_wmi_disconnect_cmd(vif->ar->wmi, vif->fw_vif_idx);

 vif->sme_state = 128;
 clear_bit(CONNECTED, &vif->flags);
 clear_bit(CONNECT_PEND, &vif->flags);


 netif_stop_queue(vif->ndev);
 netif_carrier_off(vif->ndev);


 if (vif->ar->state != ATH6KL_STATE_RECOVERY &&
     ath6kl_wmi_scanparams_cmd(vif->ar->wmi, vif->fw_vif_idx, 0xFFFF,
          0, 0, 0, 0, 0, 0, 0, 0, 0) != 0)
  ath6kl_warn("failed to disable scan during stop\n");

 ath6kl_cfg80211_scan_complete_event(vif, 1);
}
