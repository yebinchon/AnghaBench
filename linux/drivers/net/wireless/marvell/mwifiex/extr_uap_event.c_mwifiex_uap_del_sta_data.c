
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_sta_node {int mac_addr; scalar_t__ is_11n_enabled; } ;
struct mwifiex_private {scalar_t__ ap_11n_enabled; } ;


 int mwifiex_11n_del_rx_reorder_tbl_by_ta (struct mwifiex_private*,int ) ;
 int mwifiex_del_sta_entry (struct mwifiex_private*,int ) ;
 int mwifiex_del_tx_ba_stream_tbl_by_ra (struct mwifiex_private*,int ) ;

void mwifiex_uap_del_sta_data(struct mwifiex_private *priv,
         struct mwifiex_sta_node *node)
{
 if (priv->ap_11n_enabled && node->is_11n_enabled) {
  mwifiex_11n_del_rx_reorder_tbl_by_ta(priv, node->mac_addr);
  mwifiex_del_tx_ba_stream_tbl_by_ra(priv, node->mac_addr);
 }
 mwifiex_del_sta_entry(priv, node->mac_addr);

 return;
}
