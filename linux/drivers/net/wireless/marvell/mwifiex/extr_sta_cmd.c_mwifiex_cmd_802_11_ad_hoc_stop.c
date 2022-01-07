
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_cmd_ds_command {void* size; void* command; } ;


 int HostCmd_CMD_802_11_AD_HOC_STOP ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int ) ;

__attribute__((used)) static int mwifiex_cmd_802_11_ad_hoc_stop(struct host_cmd_ds_command *cmd)
{
 cmd->command = cpu_to_le16(HostCmd_CMD_802_11_AD_HOC_STOP);
 cmd->size = cpu_to_le16(S_DS_GEN);
 return 0;
}
