
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_mvm_reorder_buffer {int reorder_timer; int lock; int buf_size; int head_sn; } ;
struct iwl_mvm_delba_data {size_t baid; } ;
struct iwl_mvm_baid_data {size_t sta_id; struct iwl_mvm_reorder_buffer* reorder_buf; } ;
struct iwl_mvm {int * fw_id_to_mac_id; int * baid_map; } ;
struct ieee80211_sta {int dummy; } ;


 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 size_t IWL_MAX_BAID ;
 scalar_t__ WARN_ONCE (int,char*,size_t) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int del_timer_sync (int *) ;
 int ieee80211_sn_add (int ,int ) ;
 int iwl_mvm_release_frames (struct iwl_mvm*,struct ieee80211_sta*,int *,struct iwl_mvm_baid_data*,struct iwl_mvm_reorder_buffer*,int ,int ) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iwl_mvm_del_ba(struct iwl_mvm *mvm, int queue,
      struct iwl_mvm_delba_data *data)
{
 struct iwl_mvm_baid_data *ba_data;
 struct ieee80211_sta *sta;
 struct iwl_mvm_reorder_buffer *reorder_buf;
 u8 baid = data->baid;

 if (WARN_ONCE(baid >= IWL_MAX_BAID, "invalid BAID: %x\n", baid))
  return;

 rcu_read_lock();

 ba_data = rcu_dereference(mvm->baid_map[baid]);
 if (WARN_ON_ONCE(!ba_data))
  goto out;

 sta = rcu_dereference(mvm->fw_id_to_mac_id[ba_data->sta_id]);
 if (WARN_ON_ONCE(IS_ERR_OR_NULL(sta)))
  goto out;

 reorder_buf = &ba_data->reorder_buf[queue];


 spin_lock_bh(&reorder_buf->lock);
 iwl_mvm_release_frames(mvm, sta, ((void*)0), ba_data, reorder_buf,
          ieee80211_sn_add(reorder_buf->head_sn,
      reorder_buf->buf_size),
          0);
 spin_unlock_bh(&reorder_buf->lock);
 del_timer_sync(&reorder_buf->reorder_timer);

out:
 rcu_read_unlock();
}
