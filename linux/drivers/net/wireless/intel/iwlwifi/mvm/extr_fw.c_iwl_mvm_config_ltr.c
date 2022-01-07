
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* trans; } ;
struct iwl_ltr_config_cmd {int flags; } ;
typedef int cmd ;
struct TYPE_2__ {int ltr_enabled; } ;


 int LTR_CFG_FLAG_FEATURE_ENABLE ;
 int LTR_CONFIG ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_ltr_config_cmd*) ;

__attribute__((used)) static int iwl_mvm_config_ltr(struct iwl_mvm *mvm)
{
 struct iwl_ltr_config_cmd cmd = {
  .flags = cpu_to_le32(LTR_CFG_FLAG_FEATURE_ENABLE),
 };

 if (!mvm->trans->ltr_enabled)
  return 0;

 return iwl_mvm_send_cmd_pdu(mvm, LTR_CONFIG, 0,
        sizeof(cmd), &cmd);
}
