
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct timer_list {int dummy; } ;
struct iwl_mvm_sta {int vif; } ;
struct iwl_mvm_reorder_buffer {size_t queue; int buf_size; int head_sn; int lock; int reorder_timer; TYPE_2__* mvm; scalar_t__ removed; int num_stored; } ;
struct TYPE_5__ {scalar_t__ reorder_time; int frames; } ;
struct iwl_mvm_reorder_buf_entry {TYPE_1__ e; } ;
struct iwl_mvm_baid_data {size_t entries_per_queue; size_t sta_id; int tid; struct iwl_mvm_reorder_buf_entry* entries; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_6__ {int * fw_id_to_mac_id; } ;


 int IWL_DEBUG_HT (TYPE_2__*,char*,size_t,size_t) ;
 int IWL_MVM_RELEASE_SEND_RSS_SYNC ;
 scalar_t__ RX_REORDER_BUF_TIMEOUT_MQ ;
 struct iwl_mvm_reorder_buffer* buf ;
 struct iwl_mvm_reorder_buffer* from_timer (int ,struct timer_list*,int ) ;
 size_t ieee80211_sn_add (int,int) ;
 struct iwl_mvm_baid_data* iwl_mvm_baid_data_from_reorder_buf (struct iwl_mvm_reorder_buffer*) ;
 int iwl_mvm_event_frame_timeout_callback (TYPE_2__*,int ,struct ieee80211_sta*,int ) ;
 int iwl_mvm_release_frames (TYPE_2__*,struct ieee80211_sta*,int *,struct iwl_mvm_baid_data*,struct iwl_mvm_reorder_buffer*,size_t,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int reorder_timer ;
 scalar_t__ skb_queue_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int time_after (int ,scalar_t__) ;

void iwl_mvm_reorder_timer_expired(struct timer_list *t)
{
 struct iwl_mvm_reorder_buffer *buf = from_timer(buf, t, reorder_timer);
 struct iwl_mvm_baid_data *baid_data =
  iwl_mvm_baid_data_from_reorder_buf(buf);
 struct iwl_mvm_reorder_buf_entry *entries =
  &baid_data->entries[buf->queue * baid_data->entries_per_queue];
 int i;
 u16 sn = 0, index = 0;
 bool expired = 0;
 bool cont = 0;

 spin_lock(&buf->lock);

 if (!buf->num_stored || buf->removed) {
  spin_unlock(&buf->lock);
  return;
 }

 for (i = 0; i < buf->buf_size ; i++) {
  index = (buf->head_sn + i) % buf->buf_size;

  if (skb_queue_empty(&entries[index].e.frames)) {




   cont = 0;
   continue;
  }
  if (!cont &&
      !time_after(jiffies, entries[index].e.reorder_time +
      RX_REORDER_BUF_TIMEOUT_MQ))
   break;

  expired = 1;

  cont = 1;
  sn = ieee80211_sn_add(buf->head_sn, i + 1);
 }

 if (expired) {
  struct ieee80211_sta *sta;
  struct iwl_mvm_sta *mvmsta;
  u8 sta_id = baid_data->sta_id;

  rcu_read_lock();
  sta = rcu_dereference(buf->mvm->fw_id_to_mac_id[sta_id]);
  mvmsta = iwl_mvm_sta_from_mac80211(sta);


  IWL_DEBUG_HT(buf->mvm,
        "Releasing expired frames for sta %u, sn %d\n",
        sta_id, sn);
  iwl_mvm_event_frame_timeout_callback(buf->mvm, mvmsta->vif,
           sta, baid_data->tid);
  iwl_mvm_release_frames(buf->mvm, sta, ((void*)0), baid_data,
           buf, sn, IWL_MVM_RELEASE_SEND_RSS_SYNC);
  rcu_read_unlock();
 } else {





  mod_timer(&buf->reorder_timer,
     entries[index].e.reorder_time +
     1 + RX_REORDER_BUF_TIMEOUT_MQ);
 }
 spin_unlock(&buf->lock);
}
