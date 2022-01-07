
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_cmd_ds_command {void* size; void* command; } ;
struct host_cmd_ds_802_11_get_log {int dummy; } ;


 scalar_t__ HostCmd_CMD_802_11_GET_LOG ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;

__attribute__((used)) static int
mwifiex_cmd_802_11_get_log(struct host_cmd_ds_command *cmd)
{
 cmd->command = cpu_to_le16(HostCmd_CMD_802_11_GET_LOG);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_802_11_get_log) +
    S_DS_GEN);
 return 0;
}
