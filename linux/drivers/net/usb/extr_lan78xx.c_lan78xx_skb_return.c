
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct skb_data {int dummy; } ;
struct sk_buff {int cb; int protocol; scalar_t__ len; } ;
struct lan78xx_net {TYPE_2__* net; int rxq_pause; int flags; } ;
struct ethhdr {int dummy; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int EVENT_RX_PAUSED ;
 int NET_RX_SUCCESS ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 int memset (int ,int ,int) ;
 int netif_dbg (struct lan78xx_net*,int ,TYPE_2__*,char*,int,...) ;
 int netif_rx (struct sk_buff*) ;
 int rx_err ;
 int rx_status ;
 scalar_t__ skb_defer_rx_timestamp (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void lan78xx_skb_return(struct lan78xx_net *dev, struct sk_buff *skb)
{
 int status;

 if (test_bit(EVENT_RX_PAUSED, &dev->flags)) {
  skb_queue_tail(&dev->rxq_pause, skb);
  return;
 }

 dev->net->stats.rx_packets++;
 dev->net->stats.rx_bytes += skb->len;

 skb->protocol = eth_type_trans(skb, dev->net);

 netif_dbg(dev, rx_status, dev->net, "< rx, len %zu, type 0x%x\n",
    skb->len + sizeof(struct ethhdr), skb->protocol);
 memset(skb->cb, 0, sizeof(struct skb_data));

 if (skb_defer_rx_timestamp(skb))
  return;

 status = netif_rx(skb);
 if (status != NET_RX_SUCCESS)
  netif_dbg(dev, rx_err, dev->net,
     "netif_rx status %d\n", status);
}
