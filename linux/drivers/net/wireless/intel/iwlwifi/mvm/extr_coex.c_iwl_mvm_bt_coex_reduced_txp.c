
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_mvm_sta {int bt_reduced_txpower; int sta_id; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_bt_coex_reduced_txp_update_cmd {int reduced_txp; } ;
typedef int cmd ;


 int BT_COEX_UPDATE_REDUCED_TXP ;
 int BT_REDUCED_TX_POWER_BIT ;
 int CMD_ASYNC ;
 int IWL_DEBUG_COEX (struct iwl_mvm*,char*,char*,int ) ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_bt_coex_reduced_txp_update_cmd*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_staid_protected (struct iwl_mvm*,int ) ;

__attribute__((used)) static int iwl_mvm_bt_coex_reduced_txp(struct iwl_mvm *mvm, u8 sta_id,
           bool enable)
{
 struct iwl_bt_coex_reduced_txp_update_cmd cmd = {};
 struct iwl_mvm_sta *mvmsta;
 u32 value;

 mvmsta = iwl_mvm_sta_from_staid_protected(mvm, sta_id);
 if (!mvmsta)
  return 0;


 if (mvmsta->bt_reduced_txpower == enable)
  return 0;

 value = mvmsta->sta_id;

 if (enable)
  value |= BT_REDUCED_TX_POWER_BIT;

 IWL_DEBUG_COEX(mvm, "%sable reduced Tx Power for sta %d\n",
         enable ? "en" : "dis", sta_id);

 cmd.reduced_txp = cpu_to_le32(value);
 mvmsta->bt_reduced_txpower = enable;

 return iwl_mvm_send_cmd_pdu(mvm, BT_COEX_UPDATE_REDUCED_TXP,
        CMD_ASYNC, sizeof(cmd), &cmd);
}
