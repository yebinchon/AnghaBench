
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ truesize; int ip_summed; int protocol; int dev; scalar_t__ data; } ;
struct mwifiex_txinfo {int flags; int bss_type; int bss_num; } ;
struct TYPE_2__ {int rx_packets; int rx_bytes; int last_rx; } ;
struct mwifiex_sta_node {TYPE_1__ stats; } ;
struct mwifiex_private {int netdev; int bss_type; int bss_num; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {scalar_t__ iface_type; int pending_bridged_pkts; int tx_pending; } ;
struct ethhdr {int h_dest; int h_source; } ;


 int CHECKSUM_NONE ;
 int ERROR ;
 int GFP_ATOMIC ;
 scalar_t__ MWIFIEX_BRIDGED_PKTS_THR_HIGH ;
 int MWIFIEX_BUF_FLAG_BRIDGED_PKT ;
 scalar_t__ MWIFIEX_MIN_DATA_HEADER_LEN ;
 scalar_t__ MWIFIEX_PCIE ;
 scalar_t__ MWIFIEX_RX_DATA_BUF_SIZE ;
 struct mwifiex_txinfo* MWIFIEX_SKB_TXCB (struct sk_buff*) ;
 scalar_t__ MWIFIEX_USB ;
 int __net_timestamp (struct sk_buff*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int jiffies ;
 scalar_t__ likely (struct sk_buff*) ;
 int memset (struct mwifiex_txinfo*,int ,int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int ) ;
 int mwifiex_queue_main_work (struct mwifiex_adapter*) ;
 int mwifiex_uap_cleanup_tx_queues (struct mwifiex_private*) ;
 int mwifiex_wmm_add_buf_txqueue (struct mwifiex_private*,struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int netif_rx_ni (struct sk_buff*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,scalar_t__) ;

int mwifiex_uap_recv_packet(struct mwifiex_private *priv,
       struct sk_buff *skb)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 struct mwifiex_sta_node *src_node;
 struct ethhdr *p_ethhdr;
 struct sk_buff *skb_uap;
 struct mwifiex_txinfo *tx_info;

 if (!skb)
  return -1;

 p_ethhdr = (void *)skb->data;
 src_node = mwifiex_get_sta_entry(priv, p_ethhdr->h_source);
 if (src_node) {
  src_node->stats.last_rx = jiffies;
  src_node->stats.rx_bytes += skb->len;
  src_node->stats.rx_packets++;
 }

 if (is_multicast_ether_addr(p_ethhdr->h_dest) ||
     mwifiex_get_sta_entry(priv, p_ethhdr->h_dest)) {
  if (skb_headroom(skb) < MWIFIEX_MIN_DATA_HEADER_LEN)
   skb_uap =
   skb_realloc_headroom(skb, MWIFIEX_MIN_DATA_HEADER_LEN);
  else
   skb_uap = skb_copy(skb, GFP_ATOMIC);

  if (likely(skb_uap)) {
   tx_info = MWIFIEX_SKB_TXCB(skb_uap);
   memset(tx_info, 0, sizeof(*tx_info));
   tx_info->bss_num = priv->bss_num;
   tx_info->bss_type = priv->bss_type;
   tx_info->flags |= MWIFIEX_BUF_FLAG_BRIDGED_PKT;
   __net_timestamp(skb_uap);
   mwifiex_wmm_add_buf_txqueue(priv, skb_uap);
   atomic_inc(&adapter->tx_pending);
   atomic_inc(&adapter->pending_bridged_pkts);
   if ((atomic_read(&adapter->pending_bridged_pkts) >=
     MWIFIEX_BRIDGED_PKTS_THR_HIGH)) {
    mwifiex_dbg(adapter, ERROR,
         "Tx: Bridge packet limit reached. Drop packet!\n");
    mwifiex_uap_cleanup_tx_queues(priv);
   }

  } else {
   mwifiex_dbg(adapter, ERROR, "failed to allocate skb_uap");
  }

  mwifiex_queue_main_work(adapter);

  if (mwifiex_get_sta_entry(priv, p_ethhdr->h_dest))
   return 0;
 }

 skb->dev = priv->netdev;
 skb->protocol = eth_type_trans(skb, priv->netdev);
 skb->ip_summed = CHECKSUM_NONE;
 if ((adapter->iface_type == MWIFIEX_USB ||
      adapter->iface_type == MWIFIEX_PCIE) &&
     skb->truesize > MWIFIEX_RX_DATA_BUF_SIZE)
  skb->truesize += (skb->len - MWIFIEX_RX_DATA_BUF_SIZE);


 if (in_interrupt())
  netif_rx(skb);
 else
  netif_rx_ni(skb);

 return 0;
}
