
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct host_cmd_ds_sys_config {int * tlv; void* action; } ;
struct TYPE_2__ {int uap_sys_config; } ;
struct host_cmd_ds_command {void* size; TYPE_1__ params; void* command; } ;


 scalar_t__ HostCmd_CMD_UAP_SYS_CONFIG ;
 scalar_t__ S_DS_GEN ;


 void* cpu_to_le16 (scalar_t__) ;
 int mwifiex_uap_bss_param_prepare (int *,void*,scalar_t__*) ;
 int mwifiex_uap_custom_ie_prepare (int *,void*,scalar_t__*) ;

__attribute__((used)) static int
mwifiex_cmd_uap_sys_config(struct host_cmd_ds_command *cmd, u16 cmd_action,
      u32 type, void *cmd_buf)
{
 u8 *tlv;
 u16 cmd_size, param_size, ie_size;
 struct host_cmd_ds_sys_config *sys_cfg;

 cmd->command = cpu_to_le16(HostCmd_CMD_UAP_SYS_CONFIG);
 cmd_size = (u16)(sizeof(struct host_cmd_ds_sys_config) + S_DS_GEN);
 sys_cfg = (struct host_cmd_ds_sys_config *)&cmd->params.uap_sys_config;
 sys_cfg->action = cpu_to_le16(cmd_action);
 tlv = sys_cfg->tlv;

 switch (type) {
 case 129:
  param_size = cmd_size;
  if (mwifiex_uap_bss_param_prepare(tlv, cmd_buf, &param_size))
   return -1;
  cmd->size = cpu_to_le16(param_size);
  break;
 case 128:
  ie_size = cmd_size;
  if (mwifiex_uap_custom_ie_prepare(tlv, cmd_buf, &ie_size))
   return -1;
  cmd->size = cpu_to_le16(ie_size);
  break;
 default:
  return -1;
 }

 return 0;
}
