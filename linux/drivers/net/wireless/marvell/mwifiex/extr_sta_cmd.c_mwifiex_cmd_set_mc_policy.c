
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ const u16 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_multi_chan_policy {void* policy; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_multi_chan_policy mc_policy; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 scalar_t__ const HostCmd_CMD_MC_POLICY ;
 scalar_t__ const S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__ const) ;

__attribute__((used)) static int
mwifiex_cmd_set_mc_policy(struct mwifiex_private *priv,
     struct host_cmd_ds_command *cmd,
     u16 cmd_action, void *data_buf)
{
 struct host_cmd_ds_multi_chan_policy *mc_pol = &cmd->params.mc_policy;
 const u16 *drcs_info = data_buf;

 mc_pol->action = cpu_to_le16(cmd_action);
 mc_pol->policy = cpu_to_le16(*drcs_info);
 cmd->command = cpu_to_le16(HostCmd_CMD_MC_POLICY);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_multi_chan_policy) +
    S_DS_GEN);
 return 0;
}
