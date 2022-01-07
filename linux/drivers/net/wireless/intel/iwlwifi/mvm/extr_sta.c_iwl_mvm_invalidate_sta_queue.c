
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct iwl_mvm_sta {unsigned long tid_disable_agg; int tfd_queue_msk; int sta_id; int mac_id_n_color; } ;
struct iwl_mvm_add_sta_cmd {int tid_disable_tx; void* tfd_queue_msk; int modify_mask; int add_modify; int sta_id; void* mac_id_n_color; } ;
struct iwl_mvm {int * fw_id_to_mac_id; TYPE_1__* queue_info; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {size_t ra_sta_id; } ;


 int ADD_STA ;
 int ADD_STA_SUCCESS ;
 int EINVAL ;
 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 int STA_MODE_MODIFY ;
 int STA_MODIFY_QUEUES ;
 int STA_MODIFY_QUEUE_REMOVAL ;
 int STA_MODIFY_TID_DISABLE_TX ;
 scalar_t__ WARN_ON (int ) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int cpu_to_le16 (unsigned long) ;
 void* cpu_to_le32 (int ) ;
 int iwl_mvm_add_sta_cmd_size (struct iwl_mvm*) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu_status (struct iwl_mvm*,int ,int ,struct iwl_mvm_add_sta_cmd*,int *) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int iwl_mvm_invalidate_sta_queue(struct iwl_mvm *mvm, int queue,
     unsigned long disable_agg_tids,
     bool remove_queue)
{
 struct iwl_mvm_add_sta_cmd cmd = {};
 struct ieee80211_sta *sta;
 struct iwl_mvm_sta *mvmsta;
 u32 status;
 u8 sta_id;

 if (WARN_ON(iwl_mvm_has_new_tx_api(mvm)))
  return -EINVAL;

 sta_id = mvm->queue_info[queue].ra_sta_id;

 rcu_read_lock();

 sta = rcu_dereference(mvm->fw_id_to_mac_id[sta_id]);

 if (WARN_ON_ONCE(IS_ERR_OR_NULL(sta))) {
  rcu_read_unlock();
  return -EINVAL;
 }

 mvmsta = iwl_mvm_sta_from_mac80211(sta);

 mvmsta->tid_disable_agg |= disable_agg_tids;

 cmd.mac_id_n_color = cpu_to_le32(mvmsta->mac_id_n_color);
 cmd.sta_id = mvmsta->sta_id;
 cmd.add_modify = STA_MODE_MODIFY;
 cmd.modify_mask = STA_MODIFY_QUEUES;
 if (disable_agg_tids)
  cmd.modify_mask |= STA_MODIFY_TID_DISABLE_TX;
 if (remove_queue)
  cmd.modify_mask |= STA_MODIFY_QUEUE_REMOVAL;
 cmd.tfd_queue_msk = cpu_to_le32(mvmsta->tfd_queue_msk);
 cmd.tid_disable_tx = cpu_to_le16(mvmsta->tid_disable_agg);

 rcu_read_unlock();


 status = ADD_STA_SUCCESS;
 return iwl_mvm_send_cmd_pdu_status(mvm, ADD_STA,
        iwl_mvm_add_sta_cmd_size(mvm),
        &cmd, &status);
}
