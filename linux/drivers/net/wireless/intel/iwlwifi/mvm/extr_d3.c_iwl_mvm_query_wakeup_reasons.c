
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct iwl_wowlan_status_data {int* qos_seq_ctr; int wake_packet; void* wake_packet_bufsize; void* wake_packet_length; void* wakeup_reasons; void* pattern_number; } ;
struct iwl_wowlan_status {int wake_packet; int wake_packet_bufsize; int wake_packet_length; int wakeup_reasons; int * qos_seq_ctr; int pattern_number; } ;
struct iwl_mvm_sta {TYPE_2__* tid_data; } ;
struct iwl_mvm {int offload_tid; int mutex; TYPE_3__* trans; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_6__ {TYPE_1__* trans_cfg; } ;
struct TYPE_5__ {int seq_number; int txq_id; } ;
struct TYPE_4__ {scalar_t__ device_family; } ;


 scalar_t__ IS_ERR_OR_NULL (struct iwl_wowlan_status*) ;
 scalar_t__ IWL_DEVICE_FAMILY_22000 ;
 int IWL_MAX_TID_COUNT ;
 struct iwl_wowlan_status* iwl_mvm_get_wakeup_status (struct iwl_mvm*) ;
 int iwl_mvm_report_wakeup_reasons (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_wowlan_status_data*) ;
 int iwl_mvm_setup_connection_keep (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_wowlan_status*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_staid_protected (struct iwl_mvm*,int ) ;
 int iwl_trans_set_q_ptrs (TYPE_3__*,int ,int) ;
 int kfree (struct iwl_wowlan_status*) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool iwl_mvm_query_wakeup_reasons(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif)
{
 struct iwl_wowlan_status_data status;
 struct iwl_wowlan_status *fw_status;
 int i;
 bool keep;
 struct iwl_mvm_sta *mvm_ap_sta;

 fw_status = iwl_mvm_get_wakeup_status(mvm);
 if (IS_ERR_OR_NULL(fw_status))
  goto out_unlock;

 status.pattern_number = le16_to_cpu(fw_status->pattern_number);
 for (i = 0; i < 8; i++)
  status.qos_seq_ctr[i] =
   le16_to_cpu(fw_status->qos_seq_ctr[i]);
 status.wakeup_reasons = le32_to_cpu(fw_status->wakeup_reasons);
 status.wake_packet_length =
  le32_to_cpu(fw_status->wake_packet_length);
 status.wake_packet_bufsize =
  le32_to_cpu(fw_status->wake_packet_bufsize);
 status.wake_packet = fw_status->wake_packet;


 mvm_ap_sta = iwl_mvm_sta_from_staid_protected(mvm, 0);
 if (!mvm_ap_sta)
  goto out_free;

 for (i = 0; i < IWL_MAX_TID_COUNT; i++) {
  u16 seq = status.qos_seq_ctr[i];

  seq += 0x10;
  mvm_ap_sta->tid_data[i].seq_number = seq;
 }

 if (mvm->trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22000) {
  i = mvm->offload_tid;
  iwl_trans_set_q_ptrs(mvm->trans,
         mvm_ap_sta->tid_data[i].txq_id,
         mvm_ap_sta->tid_data[i].seq_number >> 4);
 }


 mutex_unlock(&mvm->mutex);

 iwl_mvm_report_wakeup_reasons(mvm, vif, &status);

 keep = iwl_mvm_setup_connection_keep(mvm, vif, fw_status);

 kfree(fw_status);
 return keep;

out_free:
 kfree(fw_status);
out_unlock:
 mutex_unlock(&mvm->mutex);
 return 0;
}
