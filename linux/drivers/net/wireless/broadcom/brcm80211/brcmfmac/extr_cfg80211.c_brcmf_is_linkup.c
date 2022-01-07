
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct brcmf_event_msg {scalar_t__ event_code; scalar_t__ status; int addr; } ;
struct TYPE_2__ {scalar_t__ use_fwsup; int bssid; } ;
struct brcmf_cfg80211_vif {int sme_state; TYPE_1__ profile; } ;


 scalar_t__ BRCMF_E_PSK_SUP ;
 scalar_t__ BRCMF_E_SET_SSID ;
 scalar_t__ BRCMF_E_STATUS_FWSUP_COMPLETED ;
 scalar_t__ BRCMF_E_STATUS_SUCCESS ;
 scalar_t__ BRCMF_PROFILE_FWSUP_PSK ;
 int BRCMF_VIF_STATUS_ASSOC_SUCCESS ;
 int BRCMF_VIF_STATUS_EAP_SUCCESS ;
 int CONN ;
 int ETH_ALEN ;
 int brcmf_dbg (int ,char*) ;
 int clear_bit (int ,int *) ;
 int memcpy (int ,int ,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool brcmf_is_linkup(struct brcmf_cfg80211_vif *vif,
       const struct brcmf_event_msg *e)
{
 u32 event = e->event_code;
 u32 status = e->status;

 if (vif->profile.use_fwsup == BRCMF_PROFILE_FWSUP_PSK &&
     event == BRCMF_E_PSK_SUP &&
     status == BRCMF_E_STATUS_FWSUP_COMPLETED)
  set_bit(BRCMF_VIF_STATUS_EAP_SUCCESS, &vif->sme_state);
 if (event == BRCMF_E_SET_SSID && status == BRCMF_E_STATUS_SUCCESS) {
  brcmf_dbg(CONN, "Processing set ssid\n");
  memcpy(vif->profile.bssid, e->addr, ETH_ALEN);
  if (vif->profile.use_fwsup != BRCMF_PROFILE_FWSUP_PSK)
   return 1;

  set_bit(BRCMF_VIF_STATUS_ASSOC_SUCCESS, &vif->sme_state);
 }

 if (test_bit(BRCMF_VIF_STATUS_EAP_SUCCESS, &vif->sme_state) &&
     test_bit(BRCMF_VIF_STATUS_ASSOC_SUCCESS, &vif->sme_state)) {
  clear_bit(BRCMF_VIF_STATUS_EAP_SUCCESS, &vif->sme_state);
  clear_bit(BRCMF_VIF_STATUS_ASSOC_SUCCESS, &vif->sme_state);
  return 1;
 }
 return 0;
}
