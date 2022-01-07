
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mwifiex_sta_node {void* tdls_status; } ;
struct mwifiex_private {int adapter; } ;
struct host_cmd_ds_tdls_oper {int peer_mac; int tdls_action; int reason; } ;
struct TYPE_2__ {struct host_cmd_ds_tdls_oper tdls_oper; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;





 int ERROR ;
 int MSG ;
 int TDLS_ERR_LINK_EXISTS ;
 int TDLS_ERR_LINK_NONEXISTENT ;
 void* TDLS_SETUP_FAILURE ;
 int le16_to_cpu (int ) ;
 int mwifiex_dbg (int ,int ,char*,int,...) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int) ;

__attribute__((used)) static int mwifiex_ret_tdls_oper(struct mwifiex_private *priv,
     struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_tdls_oper *cmd_tdls_oper = &resp->params.tdls_oper;
 u16 reason = le16_to_cpu(cmd_tdls_oper->reason);
 u16 action = le16_to_cpu(cmd_tdls_oper->tdls_action);
 struct mwifiex_sta_node *node =
      mwifiex_get_sta_entry(priv, cmd_tdls_oper->peer_mac);

 switch (action) {
 case 128:
  if (reason) {
   if (!node || reason == TDLS_ERR_LINK_NONEXISTENT)
    mwifiex_dbg(priv->adapter, MSG,
         "TDLS link delete for %pM failed: reason %d\n",
         cmd_tdls_oper->peer_mac, reason);
   else
    mwifiex_dbg(priv->adapter, ERROR,
         "TDLS link delete for %pM failed: reason %d\n",
         cmd_tdls_oper->peer_mac, reason);
  } else {
   mwifiex_dbg(priv->adapter, MSG,
        "TDLS link delete for %pM successful\n",
        cmd_tdls_oper->peer_mac);
  }
  break;
 case 129:
  if (reason) {
   mwifiex_dbg(priv->adapter, ERROR,
        "TDLS link creation for %pM failed: reason %d",
        cmd_tdls_oper->peer_mac, reason);
   if (node && reason != TDLS_ERR_LINK_EXISTS)
    node->tdls_status = TDLS_SETUP_FAILURE;
  } else {
   mwifiex_dbg(priv->adapter, MSG,
        "TDLS link creation for %pM successful",
        cmd_tdls_oper->peer_mac);
  }
  break;
 case 130:
  if (reason) {
   mwifiex_dbg(priv->adapter, ERROR,
        "TDLS link config for %pM failed, reason %d\n",
        cmd_tdls_oper->peer_mac, reason);
   if (node)
    node->tdls_status = TDLS_SETUP_FAILURE;
  } else {
   mwifiex_dbg(priv->adapter, MSG,
        "TDLS link config for %pM successful\n",
        cmd_tdls_oper->peer_mac);
  }
  break;
 default:
  mwifiex_dbg(priv->adapter, ERROR,
       "Unknown TDLS command action response %d", action);
  return -1;
 }

 return 0;
}
