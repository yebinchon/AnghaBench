
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct station_info {int* assoc_req_ies; size_t assoc_req_ies_len; } ;
struct TYPE_5__ {int* variable; } ;
struct TYPE_4__ {int* variable; } ;
struct TYPE_6__ {TYPE_2__ reassoc_req; TYPE_1__ assoc_req; } ;
struct ieee80211_mgmt {TYPE_3__ u; int frame_control; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ath6kl_vif {int ndev; } ;


 int ATH6KL_DBG_TRC ;
 int GFP_KERNEL ;
 int WLAN_EID_RSN ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int ath6kl_add_new_sta (struct ath6kl_vif*,int*,int ,int*,int,int,int,int,int) ;
 int ath6kl_dbg (int ,char*,int*,int ) ;
 int cfg80211_new_sta (int ,int*,struct station_info*,int ) ;
 scalar_t__ ieee80211_is_assoc_req (int ) ;
 scalar_t__ ieee80211_is_reassoc_req (int ) ;
 int kfree (struct station_info*) ;
 struct station_info* kzalloc (int,int ) ;
 int netif_wake_queue (int ) ;

void ath6kl_connect_ap_mode_sta(struct ath6kl_vif *vif, u16 aid, u8 *mac_addr,
    u8 keymgmt, u8 ucipher, u8 auth,
    u8 assoc_req_len, u8 *assoc_info, u8 apsd_info)
{
 u8 *ies = ((void*)0), *wpa_ie = ((void*)0), *pos;
 size_t ies_len = 0;
 struct station_info *sinfo;

 ath6kl_dbg(ATH6KL_DBG_TRC, "new station %pM aid=%d\n", mac_addr, aid);

 if (assoc_req_len > sizeof(struct ieee80211_hdr_3addr)) {
  struct ieee80211_mgmt *mgmt =
   (struct ieee80211_mgmt *) assoc_info;
  if (ieee80211_is_assoc_req(mgmt->frame_control) &&
      assoc_req_len >= sizeof(struct ieee80211_hdr_3addr) +
      sizeof(mgmt->u.assoc_req)) {
   ies = mgmt->u.assoc_req.variable;
   ies_len = assoc_info + assoc_req_len - ies;
  } else if (ieee80211_is_reassoc_req(mgmt->frame_control) &&
      assoc_req_len >= sizeof(struct ieee80211_hdr_3addr)
      + sizeof(mgmt->u.reassoc_req)) {
   ies = mgmt->u.reassoc_req.variable;
   ies_len = assoc_info + assoc_req_len - ies;
  }
 }

 pos = ies;
 while (pos && pos + 1 < ies + ies_len) {
  if (pos + 2 + pos[1] > ies + ies_len)
   break;
  if (pos[0] == WLAN_EID_RSN)
   wpa_ie = pos;
  else if (pos[0] == WLAN_EID_VENDOR_SPECIFIC &&
    pos[1] >= 4 &&
    pos[2] == 0x00 && pos[3] == 0x50 && pos[4] == 0xf2) {
   if (pos[5] == 0x01)
    wpa_ie = pos;
   else if (pos[5] == 0x04) {
    wpa_ie = pos;
    break;
   }
  } else if (pos[0] == 0x44 && wpa_ie == ((void*)0)) {
   wpa_ie = pos;
   break;
  }
  pos += 2 + pos[1];
 }

 ath6kl_add_new_sta(vif, mac_addr, aid, wpa_ie,
      wpa_ie ? 2 + wpa_ie[1] : 0,
      keymgmt, ucipher, auth, apsd_info);


 sinfo = kzalloc(sizeof(*sinfo), GFP_KERNEL);
 if (!sinfo)
  return;



 sinfo->assoc_req_ies = ies;
 sinfo->assoc_req_ies_len = ies_len;

 cfg80211_new_sta(vif->ndev, mac_addr, sinfo, GFP_KERNEL);

 netif_wake_queue(vif->ndev);

 kfree(sinfo);
}
