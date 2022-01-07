
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_sta_node {scalar_t__ is_11n_enabled; } ;
struct TYPE_2__ {int ra_list_spinlock; } ;
struct mwifiex_private {TYPE_1__ wmm; } ;
struct mwifiex_ds_tdls_oper {int tdls_action; int peer_mac; } ;


 int ETH_ALEN ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_TDLS_OPER ;
 int MWIFIEX_TDLS_DISABLE_LINK ;
 int TDLS_LINK_TEARDOWN ;
 int TDLS_NOT_SETUP ;
 int memcpy (int *,int const*,int ) ;
 int memset (struct mwifiex_ds_tdls_oper*,int ,int) ;
 int mwifiex_11n_cleanup_reorder_tbl (struct mwifiex_private*) ;
 int mwifiex_11n_delete_all_tx_ba_stream_tbl (struct mwifiex_private*) ;
 int mwifiex_auto_tdls_update_peer_status (struct mwifiex_private*,int const*,int ) ;
 int mwifiex_del_sta_entry (struct mwifiex_private*,int const*) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int const*) ;
 int mwifiex_restore_tdls_packets (struct mwifiex_private*,int const*,int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_tdls_oper*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
mwifiex_tdls_process_disable_link(struct mwifiex_private *priv, const u8 *peer)
{
 struct mwifiex_sta_node *sta_ptr;
 struct mwifiex_ds_tdls_oper tdls_oper;

 memset(&tdls_oper, 0, sizeof(struct mwifiex_ds_tdls_oper));
 sta_ptr = mwifiex_get_sta_entry(priv, peer);

 if (sta_ptr) {
  if (sta_ptr->is_11n_enabled) {
   mwifiex_11n_cleanup_reorder_tbl(priv);
   spin_lock_bh(&priv->wmm.ra_list_spinlock);
   mwifiex_11n_delete_all_tx_ba_stream_tbl(priv);
   spin_unlock_bh(&priv->wmm.ra_list_spinlock);
  }
  mwifiex_del_sta_entry(priv, peer);
 }

 mwifiex_restore_tdls_packets(priv, peer, TDLS_LINK_TEARDOWN);
 mwifiex_auto_tdls_update_peer_status(priv, peer, TDLS_NOT_SETUP);
 memcpy(&tdls_oper.peer_mac, peer, ETH_ALEN);
 tdls_oper.tdls_action = MWIFIEX_TDLS_DISABLE_LINK;
 return mwifiex_send_cmd(priv, HostCmd_CMD_TDLS_OPER,
    HostCmd_ACT_GEN_SET, 0, &tdls_oper, 1);
}
