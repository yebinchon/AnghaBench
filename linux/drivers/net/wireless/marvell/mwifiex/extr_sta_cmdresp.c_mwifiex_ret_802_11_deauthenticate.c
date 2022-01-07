
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int mac_address; } ;
struct TYPE_10__ {TYPE_4__ bss_descriptor; } ;
struct mwifiex_private {TYPE_5__ curr_bss_params; struct mwifiex_adapter* adapter; } ;
struct TYPE_6__ {int num_cmd_deauth; } ;
struct mwifiex_adapter {TYPE_1__ dbg; } ;
struct TYPE_7__ {int mac_addr; } ;
struct TYPE_8__ {TYPE_2__ deauth; } ;
struct host_cmd_ds_command {TYPE_3__ params; } ;


 int WLAN_REASON_DEAUTH_LEAVING ;
 int memcmp (int ,int *,int) ;
 int mwifiex_reset_connect_state (struct mwifiex_private*,int ,int) ;

__attribute__((used)) static int mwifiex_ret_802_11_deauthenticate(struct mwifiex_private *priv,
          struct host_cmd_ds_command *resp)
{
 struct mwifiex_adapter *adapter = priv->adapter;

 adapter->dbg.num_cmd_deauth++;
 if (!memcmp(resp->params.deauth.mac_addr,
      &priv->curr_bss_params.bss_descriptor.mac_address,
      sizeof(resp->params.deauth.mac_addr)))
  mwifiex_reset_connect_state(priv, WLAN_REASON_DEAUTH_LEAVING,
         0);

 return 0;
}
