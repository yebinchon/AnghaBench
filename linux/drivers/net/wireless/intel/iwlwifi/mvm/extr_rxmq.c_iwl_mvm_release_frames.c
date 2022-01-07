
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_mvm_reorder_buffer {size_t queue; int head_sn; int buf_size; int reorder_timer; int removed; scalar_t__ num_stored; int lock; } ;
struct TYPE_2__ {scalar_t__ reorder_time; struct sk_buff_head frames; } ;
struct iwl_mvm_reorder_buf_entry {TYPE_1__ e; } ;
struct iwl_mvm_baid_data {size_t entries_per_queue; int baid; struct iwl_mvm_reorder_buf_entry* entries; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int IWL_MVM_RELEASE_FROM_RSS_SYNC ;
 int IWL_MVM_RELEASE_SEND_RSS_SYNC ;
 scalar_t__ RX_REORDER_BUF_TIMEOUT_MQ ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int del_timer (int *) ;
 int ieee80211_sn_inc (int) ;
 scalar_t__ ieee80211_sn_less (int,int) ;
 scalar_t__ iwl_mvm_is_sn_less (int,int,int) ;
 int iwl_mvm_pass_packet_to_mac80211 (struct iwl_mvm*,struct napi_struct*,struct sk_buff*,size_t,struct ieee80211_sta*,int) ;
 int iwl_mvm_sync_nssn (struct iwl_mvm*,int ,int) ;
 int lockdep_assert_held (int *) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;

__attribute__((used)) static void iwl_mvm_release_frames(struct iwl_mvm *mvm,
       struct ieee80211_sta *sta,
       struct napi_struct *napi,
       struct iwl_mvm_baid_data *baid_data,
       struct iwl_mvm_reorder_buffer *reorder_buf,
       u16 nssn, u32 flags)
{
 struct iwl_mvm_reorder_buf_entry *entries =
  &baid_data->entries[reorder_buf->queue *
        baid_data->entries_per_queue];
 u16 ssn = reorder_buf->head_sn;

 lockdep_assert_held(&reorder_buf->lock);
 if ((flags & IWL_MVM_RELEASE_FROM_RSS_SYNC) &&
     ieee80211_sn_less(nssn, ssn))
  goto set_timer;


 if (iwl_mvm_is_sn_less(nssn, ssn, reorder_buf->buf_size))
  goto set_timer;

 while (iwl_mvm_is_sn_less(ssn, nssn, reorder_buf->buf_size)) {
  int index = ssn % reorder_buf->buf_size;
  struct sk_buff_head *skb_list = &entries[index].e.frames;
  struct sk_buff *skb;

  ssn = ieee80211_sn_inc(ssn);
  if ((flags & IWL_MVM_RELEASE_SEND_RSS_SYNC) &&
      (ssn == 2048 || ssn == 0))
   iwl_mvm_sync_nssn(mvm, baid_data->baid, ssn);






  while ((skb = __skb_dequeue(skb_list))) {
   iwl_mvm_pass_packet_to_mac80211(mvm, napi, skb,
       reorder_buf->queue,
       sta, 0);
   reorder_buf->num_stored--;
  }
 }
 reorder_buf->head_sn = nssn;

set_timer:
 if (reorder_buf->num_stored && !reorder_buf->removed) {
  u16 index = reorder_buf->head_sn % reorder_buf->buf_size;

  while (skb_queue_empty(&entries[index].e.frames))
   index = (index + 1) % reorder_buf->buf_size;

  mod_timer(&reorder_buf->reorder_timer,
     entries[index].e.reorder_time + 1 +
     RX_REORDER_BUF_TIMEOUT_MQ);
 } else {
  del_timer(&reorder_buf->reorder_timer);
 }
}
