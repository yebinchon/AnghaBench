
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_private {int adapter; } ;
struct host_cmd_ds_802_11_deauthenticate {void* reason_code; int mac_addr; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_deauthenticate deauth; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 int CMD ;
 int ETH_ALEN ;
 scalar_t__ HostCmd_CMD_802_11_DEAUTHENTICATE ;
 scalar_t__ S_DS_GEN ;
 scalar_t__ WLAN_REASON_DEAUTH_LEAVING ;
 void* cpu_to_le16 (scalar_t__) ;
 int memcpy (int ,int *,int ) ;
 int mwifiex_dbg (int ,int ,char*,int ) ;

__attribute__((used)) static int mwifiex_cmd_802_11_deauthenticate(struct mwifiex_private *priv,
          struct host_cmd_ds_command *cmd,
          u8 *mac)
{
 struct host_cmd_ds_802_11_deauthenticate *deauth = &cmd->params.deauth;

 cmd->command = cpu_to_le16(HostCmd_CMD_802_11_DEAUTHENTICATE);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_802_11_deauthenticate)
    + S_DS_GEN);


 memcpy(deauth->mac_addr, mac, ETH_ALEN);

 mwifiex_dbg(priv->adapter, CMD, "cmd: Deauth: %pM\n", deauth->mac_addr);

 deauth->reason_code = cpu_to_le16(WLAN_REASON_DEAUTH_LEAVING);

 return 0;
}
