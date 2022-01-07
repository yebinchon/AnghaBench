
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_sta_node {scalar_t__ tdls_status; } ;
struct mwifiex_private {int adapter; } ;
struct mwifiex_ds_tdls_oper {int tdls_action; int peer_mac; } ;


 int EINVAL ;
 int ERROR ;
 int ETH_ALEN ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_TDLS_OPER ;
 int MWIFIEX_TDLS_CONFIG_LINK ;
 scalar_t__ TDLS_SETUP_FAILURE ;
 int memcpy (int *,int const*,int ) ;
 int memset (struct mwifiex_ds_tdls_oper*,int ,int) ;
 int mwifiex_dbg (int ,int ,char*,int const*) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int const*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_tdls_oper*,int) ;

__attribute__((used)) static int
mwifiex_tdls_process_config_link(struct mwifiex_private *priv, const u8 *peer)
{
 struct mwifiex_sta_node *sta_ptr;
 struct mwifiex_ds_tdls_oper tdls_oper;

 memset(&tdls_oper, 0, sizeof(struct mwifiex_ds_tdls_oper));
 sta_ptr = mwifiex_get_sta_entry(priv, peer);

 if (!sta_ptr || sta_ptr->tdls_status == TDLS_SETUP_FAILURE) {
  mwifiex_dbg(priv->adapter, ERROR,
       "link absent for peer %pM; cannot config\n", peer);
  return -EINVAL;
 }

 memcpy(&tdls_oper.peer_mac, peer, ETH_ALEN);
 tdls_oper.tdls_action = MWIFIEX_TDLS_CONFIG_LINK;
 return mwifiex_send_cmd(priv, HostCmd_CMD_TDLS_OPER,
    HostCmd_ACT_GEN_SET, 0, &tdls_oper, 1);
}
