
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct usbnet {int dummy; } ;
struct sk_buff {unsigned int len; int* data; void* protocol; struct net_device* dev; } ;
struct qmimux_priv {int stats64; } ;
struct qmimux_hdr {int pad; int mux_id; int pkt_len; } ;
struct pcpu_sw_netstats {unsigned int rx_bytes; int syncp; int rx_packets; } ;
struct TYPE_2__ {int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ NET_RX_SUCCESS ;
 unsigned int be16_to_cpu (int ) ;
 void* htons (int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,unsigned int) ;
 struct qmimux_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_rx (struct sk_buff*) ;
 struct net_device* qmimux_find_dev (struct usbnet*,int ) ;
 int skb_put_data (struct sk_buff*,int*,unsigned int) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int qmimux_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 unsigned int len, offset = 0, pad_len, pkt_len;
 struct qmimux_hdr *hdr;
 struct net_device *net;
 struct sk_buff *skbn;
 u8 qmimux_hdr_sz = sizeof(*hdr);

 while (offset + qmimux_hdr_sz < skb->len) {
  hdr = (struct qmimux_hdr *)(skb->data + offset);
  len = be16_to_cpu(hdr->pkt_len);


  if (offset + len + qmimux_hdr_sz > skb->len)
   return 0;


  if (hdr->pad & 0x80)
   goto skip;


  pad_len = hdr->pad & 0x3f;
  if (len == 0 || pad_len >= len)
   goto skip;
  pkt_len = len - pad_len;

  net = qmimux_find_dev(dev, hdr->mux_id);
  if (!net)
   goto skip;
  skbn = netdev_alloc_skb(net, pkt_len);
  if (!skbn)
   return 0;
  skbn->dev = net;

  switch (skb->data[offset + qmimux_hdr_sz] & 0xf0) {
  case 0x40:
   skbn->protocol = htons(ETH_P_IP);
   break;
  case 0x60:
   skbn->protocol = htons(ETH_P_IPV6);
   break;
  default:

   goto skip;
  }

  skb_put_data(skbn, skb->data + offset + qmimux_hdr_sz, pkt_len);
  if (netif_rx(skbn) != NET_RX_SUCCESS) {
   net->stats.rx_errors++;
   return 0;
  } else {
   struct pcpu_sw_netstats *stats64;
   struct qmimux_priv *priv = netdev_priv(net);

   stats64 = this_cpu_ptr(priv->stats64);
   u64_stats_update_begin(&stats64->syncp);
   stats64->rx_packets++;
   stats64->rx_bytes += pkt_len;
   u64_stats_update_end(&stats64->syncp);
  }

skip:
  offset += len + qmimux_hdr_sz;
 }
 return 1;
}
