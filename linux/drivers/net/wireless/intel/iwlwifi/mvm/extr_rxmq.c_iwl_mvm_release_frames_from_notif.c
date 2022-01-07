
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct napi_struct {int dummy; } ;
struct iwl_mvm_reorder_buffer {int lock; } ;
struct iwl_mvm_baid_data {size_t sta_id; struct iwl_mvm_reorder_buffer* reorder_buf; } ;
struct iwl_mvm {int * fw_id_to_mac_id; int * baid_map; } ;
struct ieee80211_sta {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 int IWL_DEBUG_HT (struct iwl_mvm*,char*,size_t,int ) ;
 size_t IWL_RX_REORDER_DATA_INVALID_BAID ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_mvm_release_frames (struct iwl_mvm*,struct ieee80211_sta*,struct napi_struct*,struct iwl_mvm_baid_data*,struct iwl_mvm_reorder_buffer*,int ,int ) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iwl_mvm_release_frames_from_notif(struct iwl_mvm *mvm,
           struct napi_struct *napi,
           u8 baid, u16 nssn, int queue,
           u32 flags)
{
 struct ieee80211_sta *sta;
 struct iwl_mvm_reorder_buffer *reorder_buf;
 struct iwl_mvm_baid_data *ba_data;

 IWL_DEBUG_HT(mvm, "Frame release notification for BAID %u, NSSN %d\n",
       baid, nssn);

 if (WARN_ON_ONCE(baid == IWL_RX_REORDER_DATA_INVALID_BAID ||
    baid >= ARRAY_SIZE(mvm->baid_map)))
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
 iwl_mvm_release_frames(mvm, sta, napi, ba_data,
          reorder_buf, nssn, flags);
 spin_unlock_bh(&reorder_buf->lock);

out:
 rcu_read_unlock();
}
