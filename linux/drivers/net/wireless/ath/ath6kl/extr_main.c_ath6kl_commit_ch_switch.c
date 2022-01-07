
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int ch; } ;
struct ath6kl_vif {int nw_type; TYPE_1__ profile; int fw_vif_idx; int rsn_capab; struct ath6kl* ar; } ;
struct ath6kl {int wmi; int fw_capabilities; } ;



 int ATH6KL_FW_CAPABILITY_RSN_CAP_OVERRIDE ;
 int ENOTSUPP ;
 int WLAN_EID_RSN ;
 int WMI_RSN_IE_CAPB ;
 int ath6kl_err (char*,int) ;
 int ath6kl_wmi_ap_profile_commit (int ,int ,TYPE_1__*) ;
 int ath6kl_wmi_set_ie_cmd (int ,int ,int ,int ,int const*,int) ;
 int cpu_to_le16 (int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ath6kl_commit_ch_switch(struct ath6kl_vif *vif, u16 channel)
{
 struct ath6kl *ar = vif->ar;

 vif->profile.ch = cpu_to_le16(channel);

 switch (vif->nw_type) {
 case 128:




  if (vif->rsn_capab &&
      test_bit(ATH6KL_FW_CAPABILITY_RSN_CAP_OVERRIDE,
        ar->fw_capabilities))
   ath6kl_wmi_set_ie_cmd(ar->wmi, vif->fw_vif_idx,
           WLAN_EID_RSN, WMI_RSN_IE_CAPB,
           (const u8 *) &vif->rsn_capab,
           sizeof(vif->rsn_capab));

  return ath6kl_wmi_ap_profile_commit(ar->wmi, vif->fw_vif_idx,
          &vif->profile);
 default:
  ath6kl_err("won't switch channels nw_type=%d\n", vif->nw_type);
  return -ENOTSUPP;
 }
}
