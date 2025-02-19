
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct mwifiex_ds_reg_rw {int value; int offset; } ;
struct mwifiex_ds_read_eeprom {int byte_count; int offset; } ;
struct host_cmd_ds_rf_reg_access {void* value; void* offset; void* action; } ;
struct host_cmd_ds_pmic_reg_access {void* value; void* offset; void* action; } ;
struct host_cmd_ds_mac_reg_access {int value; void* offset; void* action; } ;
struct host_cmd_ds_802_11_eeprom_access {int value; void* byte_count; void* offset; void* action; } ;
struct host_cmd_ds_bbp_reg_access {void* value; void* offset; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_eeprom_access eeprom; struct host_cmd_ds_rf_reg_access rf_reg; struct host_cmd_ds_pmic_reg_access pmic_reg; struct host_cmd_ds_bbp_reg_access bbp_reg; struct host_cmd_ds_mac_reg_access mac_reg; } ;
struct host_cmd_ds_command {void* size; TYPE_1__ params; int command; } ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int mwifiex_cmd_reg_access(struct host_cmd_ds_command *cmd,
      u16 cmd_action, void *data_buf)
{
 struct mwifiex_ds_reg_rw *reg_rw = data_buf;

 switch (le16_to_cpu(cmd->command)) {
 case 130:
 {
  struct host_cmd_ds_mac_reg_access *mac_reg;

  cmd->size = cpu_to_le16(sizeof(*mac_reg) + S_DS_GEN);
  mac_reg = &cmd->params.mac_reg;
  mac_reg->action = cpu_to_le16(cmd_action);
  mac_reg->offset = cpu_to_le16((u16) reg_rw->offset);
  mac_reg->value = cpu_to_le32(reg_rw->value);
  break;
 }
 case 132:
 {
  struct host_cmd_ds_bbp_reg_access *bbp_reg;

  cmd->size = cpu_to_le16(sizeof(*bbp_reg) + S_DS_GEN);
  bbp_reg = &cmd->params.bbp_reg;
  bbp_reg->action = cpu_to_le16(cmd_action);
  bbp_reg->offset = cpu_to_le16((u16) reg_rw->offset);
  bbp_reg->value = (u8) reg_rw->value;
  break;
 }
 case 128:
 {
  struct host_cmd_ds_rf_reg_access *rf_reg;

  cmd->size = cpu_to_le16(sizeof(*rf_reg) + S_DS_GEN);
  rf_reg = &cmd->params.rf_reg;
  rf_reg->action = cpu_to_le16(cmd_action);
  rf_reg->offset = cpu_to_le16((u16) reg_rw->offset);
  rf_reg->value = (u8) reg_rw->value;
  break;
 }
 case 129:
 {
  struct host_cmd_ds_pmic_reg_access *pmic_reg;

  cmd->size = cpu_to_le16(sizeof(*pmic_reg) + S_DS_GEN);
  pmic_reg = &cmd->params.pmic_reg;
  pmic_reg->action = cpu_to_le16(cmd_action);
  pmic_reg->offset = cpu_to_le16((u16) reg_rw->offset);
  pmic_reg->value = (u8) reg_rw->value;
  break;
 }
 case 131:
 {
  struct host_cmd_ds_rf_reg_access *cau_reg;

  cmd->size = cpu_to_le16(sizeof(*cau_reg) + S_DS_GEN);
  cau_reg = &cmd->params.rf_reg;
  cau_reg->action = cpu_to_le16(cmd_action);
  cau_reg->offset = cpu_to_le16((u16) reg_rw->offset);
  cau_reg->value = (u8) reg_rw->value;
  break;
 }
 case 133:
 {
  struct mwifiex_ds_read_eeprom *rd_eeprom = data_buf;
  struct host_cmd_ds_802_11_eeprom_access *cmd_eeprom =
   &cmd->params.eeprom;

  cmd->size = cpu_to_le16(sizeof(*cmd_eeprom) + S_DS_GEN);
  cmd_eeprom->action = cpu_to_le16(cmd_action);
  cmd_eeprom->offset = cpu_to_le16(rd_eeprom->offset);
  cmd_eeprom->byte_count = cpu_to_le16(rd_eeprom->byte_count);
  cmd_eeprom->value = 0;
  break;
 }
 default:
  return -1;
 }

 return 0;
}
