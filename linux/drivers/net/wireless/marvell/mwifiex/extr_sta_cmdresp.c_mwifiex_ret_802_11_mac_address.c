
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int curr_addr; int adapter; } ;
struct host_cmd_ds_802_11_mac_address {int mac_addr; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_mac_address mac_addr; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 int ETH_ALEN ;
 int INFO ;
 int memcpy (int ,int ,int ) ;
 int mwifiex_dbg (int ,int ,char*,int ) ;

__attribute__((used)) static int mwifiex_ret_802_11_mac_address(struct mwifiex_private *priv,
       struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_802_11_mac_address *cmd_mac_addr =
       &resp->params.mac_addr;

 memcpy(priv->curr_addr, cmd_mac_addr->mac_addr, ETH_ALEN);

 mwifiex_dbg(priv->adapter, INFO,
      "info: set mac address: %pM\n", priv->curr_addr);

 return 0;
}
