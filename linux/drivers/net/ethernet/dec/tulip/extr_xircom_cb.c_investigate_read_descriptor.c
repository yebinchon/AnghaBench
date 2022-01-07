
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xircom_private {int * rx_buffer; } ;
struct sk_buff {int protocol; } ;
struct TYPE_2__ {short rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;


 int cpu_to_le32 (int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int le32_to_cpu (int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,short) ;
 int netdev_err (struct net_device*,char*,short) ;
 int netif_rx (struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,short) ;
 int skb_put (struct sk_buff*,short) ;
 int skb_reserve (struct sk_buff*,int) ;
 int trigger_receive (struct xircom_private*) ;

__attribute__((used)) static void
investigate_read_descriptor(struct net_device *dev, struct xircom_private *card,
       int descnr, unsigned int bufferoffset)
{
 int status;

 status = le32_to_cpu(card->rx_buffer[4*descnr]);

 if (status > 0) {



  short pkt_len = ((status >> 16) & 0x7ff) - 4;

  struct sk_buff *skb;

  if (pkt_len > 1518) {
   netdev_err(dev, "Packet length %i is bogus\n", pkt_len);
   pkt_len = 1518;
  }

  skb = netdev_alloc_skb(dev, pkt_len + 2);
  if (skb == ((void*)0)) {
   dev->stats.rx_dropped++;
   goto out;
  }
  skb_reserve(skb, 2);
  skb_copy_to_linear_data(skb,
     &card->rx_buffer[bufferoffset / 4],
     pkt_len);
  skb_put(skb, pkt_len);
  skb->protocol = eth_type_trans(skb, dev);
  netif_rx(skb);
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += pkt_len;

out:

  card->rx_buffer[4*descnr] = cpu_to_le32(0x80000000);
  trigger_receive(card);
 }
}
