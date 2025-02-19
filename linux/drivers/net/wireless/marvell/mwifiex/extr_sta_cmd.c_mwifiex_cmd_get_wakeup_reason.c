
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_wakeup_reason {int dummy; } ;
struct host_cmd_ds_command {void* size; void* command; } ;


 scalar_t__ HostCmd_CMD_HS_WAKEUP_REASON ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;

__attribute__((used)) static int mwifiex_cmd_get_wakeup_reason(struct mwifiex_private *priv,
      struct host_cmd_ds_command *cmd)
{
 cmd->command = cpu_to_le16(HostCmd_CMD_HS_WAKEUP_REASON);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_wakeup_reason) +
    S_DS_GEN);

 return 0;
}
