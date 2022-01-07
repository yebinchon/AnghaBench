
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_sta {int sta_id; int mac_id_n_color; } ;
struct iwl_mvm_add_sta_cmd {void* station_flags_msk; void* station_flags; int add_modify; int sta_id; void* mac_id_n_color; } ;
struct iwl_mvm {int mutex; } ;


 int ADD_STA ;

 int EIO ;
 int IWL_ADD_STA_STATUS_MASK ;
 int IWL_DEBUG_INFO (struct iwl_mvm*,char*,int ) ;
 int IWL_ERR (struct iwl_mvm*,char*,int ) ;
 int STA_FLG_DRAIN_FLOW ;
 int STA_MODE_MODIFY ;
 void* cpu_to_le32 (int ) ;
 int iwl_mvm_add_sta_cmd_size (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu_status (struct iwl_mvm*,int ,int ,struct iwl_mvm_add_sta_cmd*,int*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_drain_sta(struct iwl_mvm *mvm, struct iwl_mvm_sta *mvmsta,
        bool drain)
{
 struct iwl_mvm_add_sta_cmd cmd = {};
 int ret;
 u32 status;

 lockdep_assert_held(&mvm->mutex);

 cmd.mac_id_n_color = cpu_to_le32(mvmsta->mac_id_n_color);
 cmd.sta_id = mvmsta->sta_id;
 cmd.add_modify = STA_MODE_MODIFY;
 cmd.station_flags = drain ? cpu_to_le32(STA_FLG_DRAIN_FLOW) : 0;
 cmd.station_flags_msk = cpu_to_le32(STA_FLG_DRAIN_FLOW);

 status = 128;
 ret = iwl_mvm_send_cmd_pdu_status(mvm, ADD_STA,
       iwl_mvm_add_sta_cmd_size(mvm),
       &cmd, &status);
 if (ret)
  return ret;

 switch (status & IWL_ADD_STA_STATUS_MASK) {
 case 128:
  IWL_DEBUG_INFO(mvm, "Frames for staid %d will drained in fw\n",
          mvmsta->sta_id);
  break;
 default:
  ret = -EIO;
  IWL_ERR(mvm, "Couldn't drain frames for staid %d\n",
   mvmsta->sta_id);
  break;
 }

 return ret;
}
