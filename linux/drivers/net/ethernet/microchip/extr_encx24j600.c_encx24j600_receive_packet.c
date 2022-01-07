
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int ip_summed; int protocol; struct net_device* dev; int data; int len; } ;
struct rsv {scalar_t__ len; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct encx24j600_priv {struct net_device* ndev; } ;


 int CHECKSUM_COMPLETE ;
 int ENOMEM ;
 scalar_t__ NET_IP_ALIGN ;
 int RRXDATA ;
 int dump_packet (char*,int ,int ) ;
 int encx24j600_raw_read (struct encx24j600_priv*,int ,int ,scalar_t__) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 scalar_t__ netif_msg_pktdata (struct encx24j600_priv*) ;
 int netif_rx (struct sk_buff*) ;
 int pr_err_ratelimited (char*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int encx24j600_receive_packet(struct encx24j600_priv *priv,
         struct rsv *rsv)
{
 struct net_device *dev = priv->ndev;
 struct sk_buff *skb = netdev_alloc_skb(dev, rsv->len + NET_IP_ALIGN);

 if (!skb) {
  pr_err_ratelimited("RX: OOM: packet dropped\n");
  dev->stats.rx_dropped++;
  return -ENOMEM;
 }
 skb_reserve(skb, NET_IP_ALIGN);
 encx24j600_raw_read(priv, RRXDATA, skb_put(skb, rsv->len), rsv->len);

 if (netif_msg_pktdata(priv))
  dump_packet("RX", skb->len, skb->data);

 skb->dev = dev;
 skb->protocol = eth_type_trans(skb, dev);
 skb->ip_summed = CHECKSUM_COMPLETE;


 dev->stats.rx_packets++;
 dev->stats.rx_bytes += rsv->len;

 netif_rx(skb);

 return 0;
}
