
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_sf_cfg_cmd {int state; } ;
struct iwl_mvm {int sf_state; int * fw_id_to_mac_id; TYPE_1__* cfg; } ;
struct ieee80211_sta {int dummy; } ;
typedef int sf_cmd ;
typedef enum iwl_sf_state { ____Placeholder_iwl_sf_state } iwl_sf_state ;
struct TYPE_2__ {scalar_t__ disable_dummy_notification; } ;


 int CMD_ASYNC ;
 int EINVAL ;
 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 size_t IWL_MVM_INVALID_STA ;
 int REPLY_SF_CFG_CMD ;
 int SF_CFG_DUMMY_NOTIF_OFF ;



 int WARN_ONCE (int,char*,int) ;
 int cpu_to_le32 (int) ;
 int iwl_mvm_fill_sf_command (struct iwl_mvm*,struct iwl_sf_cfg_cmd*,struct ieee80211_sta*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_sf_cfg_cmd*) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int iwl_mvm_sf_config(struct iwl_mvm *mvm, u8 sta_id,
        enum iwl_sf_state new_state)
{
 struct iwl_sf_cfg_cmd sf_cmd = {
  .state = cpu_to_le32(new_state),
 };
 struct ieee80211_sta *sta;
 int ret = 0;

 if (mvm->cfg->disable_dummy_notification)
  sf_cmd.state |= cpu_to_le32(SF_CFG_DUMMY_NOTIF_OFF);





 if (new_state != 130 && mvm->sf_state == new_state)
  return 0;

 switch (new_state) {
 case 128:
  iwl_mvm_fill_sf_command(mvm, &sf_cmd, ((void*)0));
  break;
 case 130:
  if (sta_id == IWL_MVM_INVALID_STA) {
   IWL_ERR(mvm,
    "No station: Cannot switch SF to FULL_ON\n");
   return -EINVAL;
  }
  rcu_read_lock();
  sta = rcu_dereference(mvm->fw_id_to_mac_id[sta_id]);
  if (IS_ERR_OR_NULL(sta)) {
   IWL_ERR(mvm, "Invalid station id\n");
   rcu_read_unlock();
   return -EINVAL;
  }
  iwl_mvm_fill_sf_command(mvm, &sf_cmd, sta);
  rcu_read_unlock();
  break;
 case 129:
  iwl_mvm_fill_sf_command(mvm, &sf_cmd, ((void*)0));
  break;
 default:
  WARN_ONCE(1, "Invalid state: %d. not sending Smart Fifo cmd\n",
     new_state);
  return -EINVAL;
 }

 ret = iwl_mvm_send_cmd_pdu(mvm, REPLY_SF_CFG_CMD, CMD_ASYNC,
       sizeof(sf_cmd), &sf_cmd);
 if (!ret)
  mvm->sf_state = new_state;

 return ret;
}
