
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct iwl_ext_dts_measurement_cmd {int control_mode; int flags; } ;
struct iwl_dts_measurement_cmd {int control_mode; int flags; } ;
typedef int extcmd ;
typedef int cmd ;
struct TYPE_2__ {int ucode_capa; } ;


 int CMD_DTS_MEASUREMENT_TRIGGER_WIDE ;
 int DTS_AUTOMATIC ;
 int DTS_TRIGGER_CMD_FLAGS_TEMP ;
 int IWL_UCODE_TLV_CAPA_EXTENDED_DTS_MEASURE ;
 int PHY_OPS_GROUP ;
 int cpu_to_le32 (int ) ;
 int fw_has_capa (int *,int ) ;
 int iwl_cmd_id (int ,int ,int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_ext_dts_measurement_cmd*) ;

__attribute__((used)) static int iwl_mvm_get_temp_cmd(struct iwl_mvm *mvm)
{
 struct iwl_dts_measurement_cmd cmd = {
  .flags = cpu_to_le32(DTS_TRIGGER_CMD_FLAGS_TEMP),
 };
 struct iwl_ext_dts_measurement_cmd extcmd = {
  .control_mode = cpu_to_le32(DTS_AUTOMATIC),
 };
 u32 cmdid;

 cmdid = iwl_cmd_id(CMD_DTS_MEASUREMENT_TRIGGER_WIDE,
      PHY_OPS_GROUP, 0);

 if (!fw_has_capa(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_CAPA_EXTENDED_DTS_MEASURE))
  return iwl_mvm_send_cmd_pdu(mvm, cmdid, 0, sizeof(cmd), &cmd);

 return iwl_mvm_send_cmd_pdu(mvm, cmdid, 0, sizeof(extcmd), &extcmd);
}
