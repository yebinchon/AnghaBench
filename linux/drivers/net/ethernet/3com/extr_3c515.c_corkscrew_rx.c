
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_2__ {short rx_bytes; int rx_dropped; int rx_packets; int rx_length_errors; int rx_crc_errors; int rx_frame_errors; int rx_over_errors; int rx_errors; } ;
struct net_device {int base_addr; short name; TYPE_1__ stats; } ;


 short CmdInProgress ;
 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 scalar_t__ RX_FIFO ;
 int RxDiscard ;
 scalar_t__ RxErrors ;
 scalar_t__ RxStatus ;
 int corkscrew_debug ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 unsigned char inb (scalar_t__) ;
 int insl (scalar_t__,int ,short) ;
 short inw (scalar_t__) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,short) ;
 int netif_rx (struct sk_buff*) ;
 int outw (int ,scalar_t__) ;
 int pr_debug (char*,short,...) ;
 int skb_put (struct sk_buff*,short) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int corkscrew_rx(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 int i;
 short rx_status;

 if (corkscrew_debug > 5)
  pr_debug("   In rx_packet(), status %4.4x, rx_status %4.4x.\n",
       inw(ioaddr + EL3_STATUS), inw(ioaddr + RxStatus));
 while ((rx_status = inw(ioaddr + RxStatus)) > 0) {
  if (rx_status & 0x4000) {
   unsigned char rx_error = inb(ioaddr + RxErrors);
   if (corkscrew_debug > 2)
    pr_debug(" Rx error: status %2.2x.\n",
           rx_error);
   dev->stats.rx_errors++;
   if (rx_error & 0x01)
    dev->stats.rx_over_errors++;
   if (rx_error & 0x02)
    dev->stats.rx_length_errors++;
   if (rx_error & 0x04)
    dev->stats.rx_frame_errors++;
   if (rx_error & 0x08)
    dev->stats.rx_crc_errors++;
   if (rx_error & 0x10)
    dev->stats.rx_length_errors++;
  } else {

   short pkt_len = rx_status & 0x1fff;
   struct sk_buff *skb;

   skb = netdev_alloc_skb(dev, pkt_len + 5 + 2);
   if (corkscrew_debug > 4)
    pr_debug("Receiving packet size %d status %4.4x.\n",
         pkt_len, rx_status);
   if (skb != ((void*)0)) {
    skb_reserve(skb, 2);

    insl(ioaddr + RX_FIFO,
         skb_put(skb, pkt_len),
         (pkt_len + 3) >> 2);
    outw(RxDiscard, ioaddr + EL3_CMD);
    skb->protocol = eth_type_trans(skb, dev);
    netif_rx(skb);
    dev->stats.rx_packets++;
    dev->stats.rx_bytes += pkt_len;

    for (i = 200; i >= 0; i--)
     if (! (inw(ioaddr + EL3_STATUS) & CmdInProgress))
      break;
    continue;
   } else if (corkscrew_debug)
    pr_debug("%s: Couldn't allocate a sk_buff of size %d.\n", dev->name, pkt_len);
  }
  outw(RxDiscard, ioaddr + EL3_CMD);
  dev->stats.rx_dropped++;

  for (i = 200; i >= 0; i--)
   if (!(inw(ioaddr + EL3_STATUS) & CmdInProgress))
    break;
 }
 return 0;
}
