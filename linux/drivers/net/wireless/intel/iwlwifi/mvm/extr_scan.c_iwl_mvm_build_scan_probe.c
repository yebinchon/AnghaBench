
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {void* len; void* offset; } ;
struct TYPE_10__ {void* len; scalar_t__ offset; } ;
struct TYPE_14__ {TYPE_6__ common_data; int * buf; TYPE_4__* band_data; TYPE_3__ mac_header; } ;
struct iwl_mvm_scan_params {int flags; TYPE_7__ preq; int mac_addr_mask; int * mac_addr; } ;
struct iwl_mvm {TYPE_5__* fw; } ;
struct ieee80211_vif {int addr; } ;
struct ieee80211_scan_ies {int* len; int common_ie_len; int common_ies; int * ies; } ;
struct TYPE_8__ {int * variable; } ;
struct TYPE_9__ {TYPE_1__ probe_req; } ;
struct ieee80211_mgmt {TYPE_2__ u; scalar_t__ seq_ctrl; int bssid; int da; void* frame_control; int * sa; } ;
struct TYPE_12__ {int ucode_capa; } ;
struct TYPE_11__ {void* len; void* offset; } ;


 int ETH_ALEN ;
 int IEEE80211_STYPE_PROBE_REQ ;
 int IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int NL80211_SCAN_FLAG_RANDOM_ADDR ;
 int WFA_TPC_IE_LEN ;
 int WLAN_EID_SSID ;
 void* cpu_to_le16 (int) ;
 int eth_broadcast_addr (int ) ;
 int fw_has_capa (int *,int ) ;
 int get_random_mask_addr (int *,int const*,int ) ;
 int iwl_mvm_add_tpc_report_ie (int *) ;
 int * iwl_mvm_copy_and_insert_ds_elem (struct iwl_mvm*,int ,int,int *) ;
 scalar_t__ iwl_mvm_rrm_scan_needed (struct iwl_mvm*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
iwl_mvm_build_scan_probe(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
    struct ieee80211_scan_ies *ies,
    struct iwl_mvm_scan_params *params)
{
 struct ieee80211_mgmt *frame = (void *)params->preq.buf;
 u8 *pos, *newpos;
 const u8 *mac_addr = params->flags & NL80211_SCAN_FLAG_RANDOM_ADDR ?
  params->mac_addr : ((void*)0);







 if (mac_addr)
  get_random_mask_addr(frame->sa, mac_addr,
         params->mac_addr_mask);
 else
  memcpy(frame->sa, vif->addr, ETH_ALEN);

 frame->frame_control = cpu_to_le16(IEEE80211_STYPE_PROBE_REQ);
 eth_broadcast_addr(frame->da);
 eth_broadcast_addr(frame->bssid);
 frame->seq_ctrl = 0;

 pos = frame->u.probe_req.variable;
 *pos++ = WLAN_EID_SSID;
 *pos++ = 0;

 params->preq.mac_header.offset = 0;
 params->preq.mac_header.len = cpu_to_le16(24 + 2);


 newpos = iwl_mvm_copy_and_insert_ds_elem(mvm,
       ies->ies[NL80211_BAND_2GHZ],
       ies->len[NL80211_BAND_2GHZ],
       pos);
 params->preq.band_data[0].offset = cpu_to_le16(pos - params->preq.buf);
 params->preq.band_data[0].len = cpu_to_le16(newpos - pos);
 pos = newpos;

 memcpy(pos, ies->ies[NL80211_BAND_5GHZ],
        ies->len[NL80211_BAND_5GHZ]);
 params->preq.band_data[1].offset = cpu_to_le16(pos - params->preq.buf);
 params->preq.band_data[1].len =
  cpu_to_le16(ies->len[NL80211_BAND_5GHZ]);
 pos += ies->len[NL80211_BAND_5GHZ];

 memcpy(pos, ies->common_ies, ies->common_ie_len);
 params->preq.common_data.offset = cpu_to_le16(pos - params->preq.buf);

 if (iwl_mvm_rrm_scan_needed(mvm) &&
     !fw_has_capa(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT)) {
  iwl_mvm_add_tpc_report_ie(pos + ies->common_ie_len);
  params->preq.common_data.len = cpu_to_le16(ies->common_ie_len +
          WFA_TPC_IE_LEN);
 } else {
  params->preq.common_data.len = cpu_to_le16(ies->common_ie_len);
 }
}
