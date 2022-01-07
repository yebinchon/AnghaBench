
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mwifiex_private {int curr_addr; } ;
struct TYPE_3__ {int mac_addr; void* action; } ;
struct TYPE_4__ {TYPE_1__ mac_addr; } ;
struct host_cmd_ds_command {TYPE_2__ params; scalar_t__ result; void* size; void* command; } ;
struct host_cmd_ds_802_11_mac_address {int dummy; } ;


 int ETH_ALEN ;
 scalar_t__ HostCmd_ACT_GEN_SET ;
 scalar_t__ HostCmd_CMD_802_11_MAC_ADDRESS ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int mwifiex_cmd_802_11_mac_address(struct mwifiex_private *priv,
       struct host_cmd_ds_command *cmd,
       u16 cmd_action)
{
 cmd->command = cpu_to_le16(HostCmd_CMD_802_11_MAC_ADDRESS);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_802_11_mac_address) +
    S_DS_GEN);
 cmd->result = 0;

 cmd->params.mac_addr.action = cpu_to_le16(cmd_action);

 if (cmd_action == HostCmd_ACT_GEN_SET)
  memcpy(cmd->params.mac_addr.mac_addr, priv->curr_addr,
         ETH_ALEN);
 return 0;
}
