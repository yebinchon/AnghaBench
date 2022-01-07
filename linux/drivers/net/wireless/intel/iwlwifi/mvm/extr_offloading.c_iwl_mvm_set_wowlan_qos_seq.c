
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iwl_wowlan_config_cmd {int * qos_seq; } ;
struct iwl_mvm_sta {TYPE_1__* tid_data; } ;
struct TYPE_2__ {int seq_number; } ;


 int IWL_MAX_TID_COUNT ;
 int cpu_to_le16 (int) ;

void iwl_mvm_set_wowlan_qos_seq(struct iwl_mvm_sta *mvm_ap_sta,
    struct iwl_wowlan_config_cmd *cmd)
{
 int i;






 for (i = 0; i < IWL_MAX_TID_COUNT; i++) {
  u16 seq = mvm_ap_sta->tid_data[i].seq_number;
  seq -= 0x10;
  cmd->qos_seq[i] = cpu_to_le16(seq);
 }
}
