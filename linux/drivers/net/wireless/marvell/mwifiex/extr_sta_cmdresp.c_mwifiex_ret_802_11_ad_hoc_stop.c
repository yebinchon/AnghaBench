
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_command {int dummy; } ;


 int WLAN_REASON_DEAUTH_LEAVING ;
 int mwifiex_reset_connect_state (struct mwifiex_private*,int ,int) ;

__attribute__((used)) static int mwifiex_ret_802_11_ad_hoc_stop(struct mwifiex_private *priv,
       struct host_cmd_ds_command *resp)
{
 mwifiex_reset_connect_state(priv, WLAN_REASON_DEAUTH_LEAVING, 0);
 return 0;
}
