
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_rx_mpdu_desc {int mac_flags2; int amsdu_info; int reorder_data; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; } ;
struct iwl_mvm_reorder_buffer {int valid; int head_sn; int buf_size; int last_amsdu; size_t last_sub_index; int lock; int num_stored; } ;
struct TYPE_2__ {int reorder_time; int frames; } ;
struct iwl_mvm_reorder_buf_entry {TYPE_1__ e; } ;
struct iwl_mvm_baid_data {size_t tid; scalar_t__ sta_id; int entries_per_queue; struct iwl_mvm_reorder_buf_entry* entries; struct iwl_mvm_reorder_buffer* reorder_buf; } ;
struct iwl_mvm {int * baid_map; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int device_timestamp; } ;
struct ieee80211_hdr {int frame_control; int addr1; } ;


 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 int IWL_DEBUG_RX (struct iwl_mvm*,char*,size_t,int) ;
 int IWL_MVM_RELEASE_SEND_RSS_SYNC ;
 int IWL_RX_MPDU_AMSDU_LAST_SUBFRAME ;
 size_t IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK ;
 int IWL_RX_MPDU_MFLG2_AMSDU ;
 int IWL_RX_MPDU_REORDER_BAID_MASK ;
 int IWL_RX_MPDU_REORDER_BAID_SHIFT ;
 int IWL_RX_MPDU_REORDER_BA_OLD_SN ;
 int IWL_RX_MPDU_REORDER_NSSN_MASK ;
 int IWL_RX_MPDU_REORDER_SN_MASK ;
 int IWL_RX_MPDU_REORDER_SN_SHIFT ;
 size_t IWL_RX_REORDER_DATA_INVALID_BAID ;
 scalar_t__ WARN (int,char*,size_t,scalar_t__,size_t,scalar_t__,size_t) ;
 scalar_t__ WARN_ONCE (int ,char*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 size_t ieee80211_get_tid (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 int ieee80211_is_data_present (int ) ;
 int ieee80211_is_data_qos (int ) ;
 int ieee80211_sn_inc (int) ;
 scalar_t__ ieee80211_sn_less (int,int) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 scalar_t__ iwl_mvm_is_sn_less (int,int,int) ;
 int iwl_mvm_oldsn_workaround (struct iwl_mvm*,struct ieee80211_sta*,size_t,struct iwl_mvm_reorder_buffer*,int,int ,int) ;
 int iwl_mvm_release_frames (struct iwl_mvm*,struct ieee80211_sta*,struct napi_struct*,struct iwl_mvm_baid_data*,struct iwl_mvm_reorder_buffer*,int,int ) ;
 struct ieee80211_hdr* iwl_mvm_skb_get_hdr (struct sk_buff*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_sync_nssn (struct iwl_mvm*,size_t,int) ;
 int jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 struct iwl_mvm_baid_data* rcu_dereference (int ) ;
 struct sk_buff* skb_peek_tail (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool iwl_mvm_reorder(struct iwl_mvm *mvm,
       struct napi_struct *napi,
       int queue,
       struct ieee80211_sta *sta,
       struct sk_buff *skb,
       struct iwl_rx_mpdu_desc *desc)
{
 struct ieee80211_rx_status *rx_status = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_hdr *hdr = iwl_mvm_skb_get_hdr(skb);
 struct iwl_mvm_sta *mvm_sta;
 struct iwl_mvm_baid_data *baid_data;
 struct iwl_mvm_reorder_buffer *buffer;
 struct sk_buff *tail;
 u32 reorder = le32_to_cpu(desc->reorder_data);
 bool amsdu = desc->mac_flags2 & IWL_RX_MPDU_MFLG2_AMSDU;
 bool last_subframe =
  desc->amsdu_info & IWL_RX_MPDU_AMSDU_LAST_SUBFRAME;
 u8 tid = ieee80211_get_tid(hdr);
 u8 sub_frame_idx = desc->amsdu_info &
      IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK;
 struct iwl_mvm_reorder_buf_entry *entries;
 int index;
 u16 nssn, sn;
 u8 baid;

 baid = (reorder & IWL_RX_MPDU_REORDER_BAID_MASK) >>
  IWL_RX_MPDU_REORDER_BAID_SHIFT;
 if (baid == IWL_RX_REORDER_DATA_INVALID_BAID)
  return 0;


 if (WARN_ONCE(IS_ERR_OR_NULL(sta),
        "Got valid BAID without a valid station assigned\n"))
  return 0;

 mvm_sta = iwl_mvm_sta_from_mac80211(sta);


 if (!ieee80211_is_back_req(hdr->frame_control) &&
     (!ieee80211_is_data_qos(hdr->frame_control) ||
      is_multicast_ether_addr(hdr->addr1)))
  return 0;

 if (unlikely(!ieee80211_is_data_present(hdr->frame_control)))
  return 0;

 baid_data = rcu_dereference(mvm->baid_map[baid]);
 if (!baid_data) {
  IWL_DEBUG_RX(mvm,
        "Got valid BAID but no baid allocated, bypass the re-ordering buffer. Baid %d reorder 0x%x\n",
         baid, reorder);
  return 0;
 }

 if (WARN(tid != baid_data->tid || mvm_sta->sta_id != baid_data->sta_id,
   "baid 0x%x is mapped to sta:%d tid:%d, but was received for sta:%d tid:%d\n",
   baid, baid_data->sta_id, baid_data->tid, mvm_sta->sta_id,
   tid))
  return 0;

 nssn = reorder & IWL_RX_MPDU_REORDER_NSSN_MASK;
 sn = (reorder & IWL_RX_MPDU_REORDER_SN_MASK) >>
  IWL_RX_MPDU_REORDER_SN_SHIFT;

 buffer = &baid_data->reorder_buf[queue];
 entries = &baid_data->entries[queue * baid_data->entries_per_queue];

 spin_lock_bh(&buffer->lock);

 if (!buffer->valid) {
  if (reorder & IWL_RX_MPDU_REORDER_BA_OLD_SN) {
   spin_unlock_bh(&buffer->lock);
   return 0;
  }
  buffer->valid = 1;
 }

 if (ieee80211_is_back_req(hdr->frame_control)) {
  iwl_mvm_release_frames(mvm, sta, napi, baid_data,
           buffer, nssn, 0);
  goto drop;
 }
 if (!iwl_mvm_is_sn_less(nssn, buffer->head_sn + buffer->buf_size,
    buffer->buf_size) ||
     !ieee80211_sn_less(sn, buffer->head_sn + buffer->buf_size)) {
  u16 min_sn = ieee80211_sn_less(sn, nssn) ? sn : nssn;

  iwl_mvm_release_frames(mvm, sta, napi, baid_data, buffer,
           min_sn, IWL_MVM_RELEASE_SEND_RSS_SYNC);
 }

 iwl_mvm_oldsn_workaround(mvm, sta, tid, buffer, reorder,
     rx_status->device_timestamp, queue);


 if (ieee80211_sn_less(sn, buffer->head_sn))
  goto drop;


 if (!buffer->num_stored && ieee80211_sn_less(sn, nssn)) {
  if (iwl_mvm_is_sn_less(buffer->head_sn, nssn,
           buffer->buf_size) &&
     (!amsdu || last_subframe)) {
   if (sn == 2048 || sn == 0)
    iwl_mvm_sync_nssn(mvm, baid, sn);
   buffer->head_sn = nssn;
  }

  spin_unlock_bh(&buffer->lock);
  return 0;
 }
 if (!buffer->num_stored && sn == buffer->head_sn) {
  if (!amsdu || last_subframe) {
   if (sn == 2048 || sn == 0)
    iwl_mvm_sync_nssn(mvm, baid, sn);
   buffer->head_sn = ieee80211_sn_inc(buffer->head_sn);
  }

  spin_unlock_bh(&buffer->lock);
  return 0;
 }

 index = sn % buffer->buf_size;
 tail = skb_peek_tail(&entries[index].e.frames);
 if (tail && !amsdu)
  goto drop;
 else if (tail && (sn != buffer->last_amsdu ||
     buffer->last_sub_index >= sub_frame_idx))
  goto drop;


 __skb_queue_tail(&entries[index].e.frames, skb);
 buffer->num_stored++;
 entries[index].e.reorder_time = jiffies;

 if (amsdu) {
  buffer->last_amsdu = sn;
  buffer->last_sub_index = sub_frame_idx;
 }
 if (!amsdu || last_subframe)
  iwl_mvm_release_frames(mvm, sta, napi, baid_data,
           buffer, nssn,
           IWL_MVM_RELEASE_SEND_RSS_SYNC);

 spin_unlock_bh(&buffer->lock);
 return 1;

drop:
 kfree_skb(skb);
 spin_unlock_bh(&buffer->lock);
 return 1;
}
