
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_tx_pause_tlv {scalar_t__ tx_pause; int peermac; int pkt_cnt; } ;
struct mwifiex_sta_node {scalar_t__ tx_pause; } ;
struct mwifiex_private {int port_open; int sta_list_spinlock; TYPE_1__* netdev; int adapter; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_2__ {int dev_addr; } ;


 int EVENT ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int mwifiex_dbg (int ,int ,char*,int ,scalar_t__,int ) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int ) ;
 int mwifiex_update_ralist_tx_pause (struct mwifiex_private*,int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mwifiex_process_uap_tx_pause(struct mwifiex_private *priv,
      struct mwifiex_ie_types_header *tlv)
{
 struct mwifiex_tx_pause_tlv *tp;
 struct mwifiex_sta_node *sta_ptr;

 tp = (void *)tlv;
 mwifiex_dbg(priv->adapter, EVENT,
      "uap tx_pause: %pM pause=%d, pkts=%d\n",
      tp->peermac, tp->tx_pause,
      tp->pkt_cnt);

 if (ether_addr_equal(tp->peermac, priv->netdev->dev_addr)) {
  if (tp->tx_pause)
   priv->port_open = 0;
  else
   priv->port_open = 1;
 } else if (is_multicast_ether_addr(tp->peermac)) {
  mwifiex_update_ralist_tx_pause(priv, tp->peermac, tp->tx_pause);
 } else {
  spin_lock_bh(&priv->sta_list_spinlock);
  sta_ptr = mwifiex_get_sta_entry(priv, tp->peermac);
  if (sta_ptr && sta_ptr->tx_pause != tp->tx_pause) {
   sta_ptr->tx_pause = tp->tx_pause;
   mwifiex_update_ralist_tx_pause(priv, tp->peermac,
             tp->tx_pause);
  }
  spin_unlock_bh(&priv->sta_list_spinlock);
 }
}
