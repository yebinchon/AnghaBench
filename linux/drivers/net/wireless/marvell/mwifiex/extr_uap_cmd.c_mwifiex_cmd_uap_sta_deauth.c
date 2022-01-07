
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_sta_deauth {void* reason; int mac; } ;
struct TYPE_2__ {struct host_cmd_ds_sta_deauth sta_deauth; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 int ETH_ALEN ;
 scalar_t__ HostCmd_CMD_UAP_STA_DEAUTH ;
 scalar_t__ S_DS_GEN ;
 scalar_t__ WLAN_REASON_DEAUTH_LEAVING ;
 void* cpu_to_le16 (scalar_t__) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int mwifiex_cmd_uap_sta_deauth(struct mwifiex_private *priv,
          struct host_cmd_ds_command *cmd, u8 *mac)
{
 struct host_cmd_ds_sta_deauth *sta_deauth = &cmd->params.sta_deauth;

 cmd->command = cpu_to_le16(HostCmd_CMD_UAP_STA_DEAUTH);
 memcpy(sta_deauth->mac, mac, ETH_ALEN);
 sta_deauth->reason = cpu_to_le16(WLAN_REASON_DEAUTH_LEAVING);

 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_sta_deauth) +
    S_DS_GEN);
 return 0;
}
