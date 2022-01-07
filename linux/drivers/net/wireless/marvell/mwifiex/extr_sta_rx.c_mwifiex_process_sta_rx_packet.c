
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rxpd {int flags; size_t priority; int nf; int snr; int seq_num; int rx_pkt_length; int rx_pkt_offset; int rx_pkt_type; } ;
struct TYPE_5__ {int h_source; int h_dest; } ;
struct rx_packet_hdr {TYPE_1__ eth803_hdr; } ;
struct mwifiex_sta_node {void** rx_seq; } ;
struct TYPE_8__ {int rx_dropped; } ;
struct TYPE_6__ {int mac_address; } ;
struct TYPE_7__ {TYPE_2__ bss_descriptor; } ;
struct mwifiex_private {int* rx_seq; TYPE_4__ stats; TYPE_3__ curr_bss_params; struct mwifiex_adapter* adapter; int curr_addr; } ;
struct mwifiex_adapter {int fw_cap_info; } ;


 int DATA ;
 int ERROR ;
 int ETH_ALEN ;
 scalar_t__ ISSUPP_TDLS_ENABLED (int ) ;
 int IS_11N_ENABLED (struct mwifiex_private*) ;
 size_t MAX_NUM_TID ;
 int MWIFIEX_RXPD_FLAGS_TDLS_PACKET ;
 int PKT_TYPE_BAR ;
 int PKT_TYPE_MGMT ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ether_addr_equal_unaligned (int ,int ) ;
 void* le16_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int mwifiex_11n_rx_reorder_pkt (struct mwifiex_private*,int,size_t,int *,int ,struct sk_buff*) ;
 int mwifiex_auto_tdls_update_peer_signal (struct mwifiex_private*,int *,int ,int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int *) ;
 int mwifiex_process_mgmt_packet (struct mwifiex_private*,struct sk_buff*) ;
 int mwifiex_process_rx_packet (struct mwifiex_private*,struct sk_buff*) ;
 scalar_t__ mwifiex_queuing_ra_based (struct mwifiex_private*) ;

int mwifiex_process_sta_rx_packet(struct mwifiex_private *priv,
      struct sk_buff *skb)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 int ret = 0;
 struct rxpd *local_rx_pd;
 struct rx_packet_hdr *rx_pkt_hdr;
 u8 ta[ETH_ALEN];
 u16 rx_pkt_type, rx_pkt_offset, rx_pkt_length, seq_num;
 struct mwifiex_sta_node *sta_ptr;

 local_rx_pd = (struct rxpd *) (skb->data);
 rx_pkt_type = le16_to_cpu(local_rx_pd->rx_pkt_type);
 rx_pkt_offset = le16_to_cpu(local_rx_pd->rx_pkt_offset);
 rx_pkt_length = le16_to_cpu(local_rx_pd->rx_pkt_length);
 seq_num = le16_to_cpu(local_rx_pd->seq_num);

 rx_pkt_hdr = (void *)local_rx_pd + rx_pkt_offset;

 if ((rx_pkt_offset + rx_pkt_length) > (u16) skb->len) {
  mwifiex_dbg(adapter, ERROR,
       "wrong rx packet: len=%d, rx_pkt_offset=%d, rx_pkt_length=%d\n",
       skb->len, rx_pkt_offset, rx_pkt_length);
  priv->stats.rx_dropped++;
  dev_kfree_skb_any(skb);
  return ret;
 }

 if (rx_pkt_type == PKT_TYPE_MGMT) {
  ret = mwifiex_process_mgmt_packet(priv, skb);
  if (ret)
   mwifiex_dbg(adapter, DATA, "Rx of mgmt packet failed");
  dev_kfree_skb_any(skb);
  return ret;
 }





 if ((!IS_11N_ENABLED(priv) &&
      !(ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info) &&
        !(local_rx_pd->flags & MWIFIEX_RXPD_FLAGS_TDLS_PACKET))) ||
     !ether_addr_equal_unaligned(priv->curr_addr, rx_pkt_hdr->eth803_hdr.h_dest)) {
  mwifiex_process_rx_packet(priv, skb);
  return ret;
 }

 if (mwifiex_queuing_ra_based(priv) ||
     (ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info) &&
      local_rx_pd->flags & MWIFIEX_RXPD_FLAGS_TDLS_PACKET)) {
  memcpy(ta, rx_pkt_hdr->eth803_hdr.h_source, ETH_ALEN);
  if (local_rx_pd->flags & MWIFIEX_RXPD_FLAGS_TDLS_PACKET &&
      local_rx_pd->priority < MAX_NUM_TID) {
   sta_ptr = mwifiex_get_sta_entry(priv, ta);
   if (sta_ptr)
    sta_ptr->rx_seq[local_rx_pd->priority] =
           le16_to_cpu(local_rx_pd->seq_num);
   mwifiex_auto_tdls_update_peer_signal(priv, ta,
            local_rx_pd->snr,
            local_rx_pd->nf);
  }
 } else {
  if (rx_pkt_type != PKT_TYPE_BAR &&
      local_rx_pd->priority < MAX_NUM_TID)
   priv->rx_seq[local_rx_pd->priority] = seq_num;
  memcpy(ta, priv->curr_bss_params.bss_descriptor.mac_address,
         ETH_ALEN);
 }


 ret = mwifiex_11n_rx_reorder_pkt(priv, seq_num, local_rx_pd->priority,
      ta, (u8) rx_pkt_type, skb);

 if (ret || (rx_pkt_type == PKT_TYPE_BAR))
  dev_kfree_skb_any(skb);

 if (ret)
  priv->stats.rx_dropped++;

 return ret;
}
