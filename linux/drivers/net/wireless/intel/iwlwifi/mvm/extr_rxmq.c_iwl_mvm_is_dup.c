
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_rx_mpdu_desc {size_t amsdu_info; int mac_flags2; } ;
struct iwl_mvm_sta {struct iwl_mvm_rxq_dup_data* dup_data; } ;
struct iwl_mvm_rxq_dup_data {scalar_t__* last_seq; size_t* last_sub_frame; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {scalar_t__ seq_ctrl; int frame_control; int addr1; } ;


 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 size_t IWL_MAX_TID_COUNT ;
 size_t IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK ;
 int IWL_RX_MPDU_MFLG2_AMSDU ;
 int RX_FLAG_ALLOW_SAME_PN ;
 int RX_FLAG_DUP_VALIDATED ;
 scalar_t__ WARN_ON (int ) ;
 size_t ieee80211_get_tid (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_has_retry (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 scalar_t__ ieee80211_is_qos_nullfunc (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool iwl_mvm_is_dup(struct ieee80211_sta *sta, int queue,
      struct ieee80211_rx_status *rx_status,
      struct ieee80211_hdr *hdr,
      struct iwl_rx_mpdu_desc *desc)
{
 struct iwl_mvm_sta *mvm_sta;
 struct iwl_mvm_rxq_dup_data *dup_data;
 u8 tid, sub_frame_idx;

 if (WARN_ON(IS_ERR_OR_NULL(sta)))
  return 0;

 mvm_sta = iwl_mvm_sta_from_mac80211(sta);
 dup_data = &mvm_sta->dup_data[queue];





 if (ieee80211_is_ctl(hdr->frame_control) ||
     ieee80211_is_qos_nullfunc(hdr->frame_control) ||
     is_multicast_ether_addr(hdr->addr1)) {
  rx_status->flag |= RX_FLAG_DUP_VALIDATED;
  return 0;
 }

 if (ieee80211_is_data_qos(hdr->frame_control))

  tid = ieee80211_get_tid(hdr);
 else
  tid = IWL_MAX_TID_COUNT;


 sub_frame_idx = desc->amsdu_info &
  IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK;

 if (unlikely(ieee80211_has_retry(hdr->frame_control) &&
       dup_data->last_seq[tid] == hdr->seq_ctrl &&
       dup_data->last_sub_frame[tid] >= sub_frame_idx))
  return 1;


 if (dup_data->last_seq[tid] == hdr->seq_ctrl &&
     sub_frame_idx > dup_data->last_sub_frame[tid] &&
     desc->mac_flags2 & IWL_RX_MPDU_MFLG2_AMSDU)
  rx_status->flag |= RX_FLAG_ALLOW_SAME_PN;

 dup_data->last_seq[tid] = hdr->seq_ctrl;
 dup_data->last_sub_frame[tid] = sub_frame_idx;

 rx_status->flag |= RX_FLAG_DUP_VALIDATED;

 return 0;
}
