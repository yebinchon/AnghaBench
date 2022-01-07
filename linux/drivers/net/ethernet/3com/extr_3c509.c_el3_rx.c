
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_2__ {short rx_bytes; int rx_dropped; int rx_packets; int rx_crc_errors; int rx_frame_errors; int rx_length_errors; int rx_over_errors; int rx_errors; } ;
struct net_device {int base_addr; int name; TYPE_1__ stats; } ;


 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 scalar_t__ RX_FIFO ;
 scalar_t__ RX_STATUS ;
 int RxDiscard ;
 int el3_debug ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int insl (scalar_t__,int ,short) ;
 int inw (scalar_t__) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,short) ;
 int netif_rx (struct sk_buff*) ;
 int outw (int ,scalar_t__) ;
 int pr_debug (char*,int,...) ;
 int skb_put (struct sk_buff*,short) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int
el3_rx(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 short rx_status;

 if (el3_debug > 5)
  pr_debug("   In rx_packet(), status %4.4x, rx_status %4.4x.\n",
      inw(ioaddr+EL3_STATUS), inw(ioaddr+RX_STATUS));
 while ((rx_status = inw(ioaddr + RX_STATUS)) > 0) {
  if (rx_status & 0x4000) {
   short error = rx_status & 0x3800;

   outw(RxDiscard, ioaddr + EL3_CMD);
   dev->stats.rx_errors++;
   switch (error) {
   case 0x0000: dev->stats.rx_over_errors++; break;
   case 0x0800: dev->stats.rx_length_errors++; break;
   case 0x1000: dev->stats.rx_frame_errors++; break;
   case 0x1800: dev->stats.rx_length_errors++; break;
   case 0x2000: dev->stats.rx_frame_errors++; break;
   case 0x2800: dev->stats.rx_crc_errors++; break;
   }
  } else {
   short pkt_len = rx_status & 0x7ff;
   struct sk_buff *skb;

   skb = netdev_alloc_skb(dev, pkt_len + 5);
   if (el3_debug > 4)
    pr_debug("Receiving packet size %d status %4.4x.\n",
        pkt_len, rx_status);
   if (skb != ((void*)0)) {
    skb_reserve(skb, 2);


    insl(ioaddr + RX_FIFO, skb_put(skb,pkt_len),
      (pkt_len + 3) >> 2);

    outw(RxDiscard, ioaddr + EL3_CMD);
    skb->protocol = eth_type_trans(skb,dev);
    netif_rx(skb);
    dev->stats.rx_bytes += pkt_len;
    dev->stats.rx_packets++;
    continue;
   }
   outw(RxDiscard, ioaddr + EL3_CMD);
   dev->stats.rx_dropped++;
   if (el3_debug)
    pr_debug("%s: Couldn't allocate a sk_buff of size %d.\n",
        dev->name, pkt_len);
  }
  inw(ioaddr + EL3_STATUS);
  while (inw(ioaddr + EL3_STATUS) & 0x1000)
   pr_debug("	Waiting for 3c509 to discard packet, status %x.\n",
       inw(ioaddr + EL3_STATUS) );
 }

 return 0;
}
