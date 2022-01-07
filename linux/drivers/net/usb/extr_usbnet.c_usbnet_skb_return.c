
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; int rxq_pause; int flags; int stats64; } ;
struct skb_data {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int cb; scalar_t__ len; } ;
struct pcpu_sw_netstats {int syncp; int rx_bytes; int rx_packets; } ;
struct ethhdr {int dummy; } ;


 int EVENT_RX_PAUSED ;
 int NET_RX_SUCCESS ;
 scalar_t__ eth_type_trans (struct sk_buff*,int ) ;
 int memset (int ,int ,int) ;
 int netif_dbg (struct usbnet*,int ,int ,char*,int,...) ;
 int netif_rx (struct sk_buff*) ;
 int rx_err ;
 int rx_status ;
 scalar_t__ skb_defer_rx_timestamp (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 unsigned long u64_stats_update_begin_irqsave (int *) ;
 int u64_stats_update_end_irqrestore (int *,unsigned long) ;

void usbnet_skb_return (struct usbnet *dev, struct sk_buff *skb)
{
 struct pcpu_sw_netstats *stats64 = this_cpu_ptr(dev->stats64);
 unsigned long flags;
 int status;

 if (test_bit(EVENT_RX_PAUSED, &dev->flags)) {
  skb_queue_tail(&dev->rxq_pause, skb);
  return;
 }


 if (skb->protocol == 0)
  skb->protocol = eth_type_trans (skb, dev->net);

 flags = u64_stats_update_begin_irqsave(&stats64->syncp);
 stats64->rx_packets++;
 stats64->rx_bytes += skb->len;
 u64_stats_update_end_irqrestore(&stats64->syncp, flags);

 netif_dbg(dev, rx_status, dev->net, "< rx, len %zu, type 0x%x\n",
    skb->len + sizeof (struct ethhdr), skb->protocol);
 memset (skb->cb, 0, sizeof (struct skb_data));

 if (skb_defer_rx_timestamp(skb))
  return;

 status = netif_rx (skb);
 if (status != NET_RX_SUCCESS)
  netif_dbg(dev, rx_err, dev->net,
     "netif_rx status %d\n", status);
}
