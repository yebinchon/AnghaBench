
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct host_cmd_ds_802_11_ibss_status {void* enable; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_ibss_status ibss_coalescing; } ;
struct host_cmd_ds_command {scalar_t__ result; void* size; void* command; TYPE_1__ params; } ;




 int HostCmd_CMD_802_11_IBSS_COALESCING_STATUS ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static int mwifiex_cmd_ibss_coalescing_status(struct host_cmd_ds_command *cmd,
           u16 cmd_action, u16 *enable)
{
 struct host_cmd_ds_802_11_ibss_status *ibss_coal =
  &(cmd->params.ibss_coalescing);

 cmd->command = cpu_to_le16(HostCmd_CMD_802_11_IBSS_COALESCING_STATUS);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_802_11_ibss_status) +
    S_DS_GEN);
 cmd->result = 0;
 ibss_coal->action = cpu_to_le16(cmd_action);

 switch (cmd_action) {
 case 128:
  if (enable)
   ibss_coal->enable = cpu_to_le16(*enable);
  else
   ibss_coal->enable = 0;
  break;


 case 129:
 default:
  break;
 }

 return 0;
}
