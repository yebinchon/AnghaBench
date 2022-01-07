
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {int adapter; } ;
struct host_cmd_ds_mac_control {int action; } ;
struct TYPE_2__ {struct host_cmd_ds_mac_control mac_ctrl; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 int ERROR ;
 scalar_t__ HostCmd_ACT_GEN_SET ;
 scalar_t__ HostCmd_CMD_MAC_CONTROL ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 int mwifiex_dbg (int ,int ,char*) ;

__attribute__((used)) static int mwifiex_cmd_mac_control(struct mwifiex_private *priv,
       struct host_cmd_ds_command *cmd,
       u16 cmd_action, u32 *action)
{
 struct host_cmd_ds_mac_control *mac_ctrl = &cmd->params.mac_ctrl;

 if (cmd_action != HostCmd_ACT_GEN_SET) {
  mwifiex_dbg(priv->adapter, ERROR,
       "mac_control: only support set cmd\n");
  return -1;
 }

 cmd->command = cpu_to_le16(HostCmd_CMD_MAC_CONTROL);
 cmd->size =
  cpu_to_le16(sizeof(struct host_cmd_ds_mac_control) + S_DS_GEN);
 mac_ctrl->action = cpu_to_le32(*action);

 return 0;
}
