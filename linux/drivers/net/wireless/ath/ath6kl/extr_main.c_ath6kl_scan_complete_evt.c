
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {int fw_vif_idx; int flags; struct ath6kl* ar; } ;
struct ath6kl {int wmi; int usr_bss_filter; } ;


 int ATH6KL_DBG_WLAN_CFG ;
 int CLEAR_BSSFILTER_ON_BEACON ;
 int NONE_BSS_FILTER ;
 int WMI_SCAN_STATUS_SUCCESS ;
 int ath6kl_cfg80211_scan_complete_event (struct ath6kl_vif*,int) ;
 int ath6kl_dbg (int ,char*,int) ;
 int ath6kl_wmi_bssfilter_cmd (int ,int ,int ,int ) ;
 int clear_bit (int ,int *) ;

void ath6kl_scan_complete_evt(struct ath6kl_vif *vif, int status)
{
 struct ath6kl *ar = vif->ar;
 bool aborted = 0;

 if (status != WMI_SCAN_STATUS_SUCCESS)
  aborted = 1;

 ath6kl_cfg80211_scan_complete_event(vif, aborted);

 if (!ar->usr_bss_filter) {
  clear_bit(CLEAR_BSSFILTER_ON_BEACON, &vif->flags);
  ath6kl_wmi_bssfilter_cmd(ar->wmi, vif->fw_vif_idx,
      NONE_BSS_FILTER, 0);
 }

 ath6kl_dbg(ATH6KL_DBG_WLAN_CFG, "scan complete: %d\n", status);
}
