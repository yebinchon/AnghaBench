
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ truesize; int ip_summed; int protocol; int dev; scalar_t__ data; } ;
struct TYPE_5__ {int rx_packets; int rx_bytes; int last_rx; } ;
struct mwifiex_sta_node {TYPE_2__ stats; } ;
struct TYPE_4__ {int rx_packets; int rx_bytes; } ;
struct mwifiex_private {TYPE_3__* adapter; int netdev; TYPE_1__ stats; } ;
struct ethhdr {int h_source; } ;
struct TYPE_6__ {scalar_t__ iface_type; } ;


 int CHECKSUM_NONE ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;
 scalar_t__ MWIFIEX_PCIE ;
 scalar_t__ MWIFIEX_RX_DATA_BUF_SIZE ;
 scalar_t__ MWIFIEX_USB ;
 int eth_type_trans (struct sk_buff*,int ) ;
 scalar_t__ in_interrupt () ;
 int jiffies ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int ) ;
 int netif_rx (struct sk_buff*) ;
 int netif_rx_ni (struct sk_buff*) ;

int mwifiex_recv_packet(struct mwifiex_private *priv, struct sk_buff *skb)
{
 struct mwifiex_sta_node *src_node;
 struct ethhdr *p_ethhdr;

 if (!skb)
  return -1;

 priv->stats.rx_bytes += skb->len;
 priv->stats.rx_packets++;

 if (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_UAP) {
  p_ethhdr = (void *)skb->data;
  src_node = mwifiex_get_sta_entry(priv, p_ethhdr->h_source);
  if (src_node) {
   src_node->stats.last_rx = jiffies;
   src_node->stats.rx_bytes += skb->len;
   src_node->stats.rx_packets++;
  }
 }

 skb->dev = priv->netdev;
 skb->protocol = eth_type_trans(skb, priv->netdev);
 skb->ip_summed = CHECKSUM_NONE;
 if ((priv->adapter->iface_type == MWIFIEX_USB ||
      priv->adapter->iface_type == MWIFIEX_PCIE) &&
     (skb->truesize > MWIFIEX_RX_DATA_BUF_SIZE))
  skb->truesize += (skb->len - MWIFIEX_RX_DATA_BUF_SIZE);

 if (in_interrupt())
  netif_rx(skb);
 else
  netif_rx_ni(skb);

 return 0;
}
