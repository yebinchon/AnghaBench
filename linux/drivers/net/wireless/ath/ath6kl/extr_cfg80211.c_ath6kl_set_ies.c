
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_beacon_data {int assocresp_ies_len; int assocresp_ies; int proberesp_ies_len; int proberesp_ies; int beacon_ies_len; int beacon_ies; } ;
struct ath6kl_vif {int fw_vif_idx; struct ath6kl* ar; } ;
struct ath6kl {int wmi; } ;


 int WMI_FRAME_ASSOC_RESP ;
 int WMI_FRAME_BEACON ;
 int ath6kl_set_ap_probe_resp_ies (struct ath6kl_vif*,int ,int ) ;
 int ath6kl_wmi_set_appie_cmd (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ath6kl_set_ies(struct ath6kl_vif *vif,
     struct cfg80211_beacon_data *info)
{
 struct ath6kl *ar = vif->ar;
 int res;


 res = ath6kl_wmi_set_appie_cmd(ar->wmi, vif->fw_vif_idx,
           WMI_FRAME_BEACON,
           info->beacon_ies,
           info->beacon_ies_len);
 if (res)
  return res;


 res = ath6kl_set_ap_probe_resp_ies(vif, info->proberesp_ies,
        info->proberesp_ies_len);
 if (res)
  return res;


 res = ath6kl_wmi_set_appie_cmd(ar->wmi, vif->fw_vif_idx,
           WMI_FRAME_ASSOC_RESP,
           info->assocresp_ies,
           info->assocresp_ies_len);
 if (res)
  return res;

 return 0;
}
