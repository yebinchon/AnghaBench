
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_tx_pause_tlv {scalar_t__ tx_pause; int peermac; int pkt_cnt; } ;
struct mwifiex_sta_node {scalar_t__ tx_pause; } ;
struct mwifiex_private {int port_open; int sta_list_spinlock; TYPE_1__* adapter; int cfg_bssid; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_2__ {int fw_cap_info; } ;


 int EVENT ;
 int ISSUPP_TDLS_ENABLED (int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int mwifiex_dbg (TYPE_1__*,int ,char*,int ,scalar_t__,int ) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int ) ;
 int mwifiex_get_tdls_link_status (struct mwifiex_private*,int ) ;
 scalar_t__ mwifiex_is_tdls_link_setup (int) ;
 int mwifiex_update_ralist_tx_pause (struct mwifiex_private*,int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mwifiex_process_sta_tx_pause(struct mwifiex_private *priv,
      struct mwifiex_ie_types_header *tlv)
{
 struct mwifiex_tx_pause_tlv *tp;
 struct mwifiex_sta_node *sta_ptr;
 int status;

 tp = (void *)tlv;
 mwifiex_dbg(priv->adapter, EVENT,
      "sta tx_pause: %pM pause=%d, pkts=%d\n",
      tp->peermac, tp->tx_pause,
      tp->pkt_cnt);

 if (ether_addr_equal(tp->peermac, priv->cfg_bssid)) {
  if (tp->tx_pause)
   priv->port_open = 0;
  else
   priv->port_open = 1;
 } else {
  if (!ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info))
   return;

  status = mwifiex_get_tdls_link_status(priv, tp->peermac);
  if (mwifiex_is_tdls_link_setup(status)) {
   spin_lock_bh(&priv->sta_list_spinlock);
   sta_ptr = mwifiex_get_sta_entry(priv, tp->peermac);
   if (sta_ptr && sta_ptr->tx_pause != tp->tx_pause) {
    sta_ptr->tx_pause = tp->tx_pause;
    mwifiex_update_ralist_tx_pause(priv,
              tp->peermac,
              tp->tx_pause);
   }
   spin_unlock_bh(&priv->sta_list_spinlock);
  }
 }
}
