
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_2__ {short rx_bytes; int rx_dropped; int rx_packets; int rx_crc_errors; int rx_frame_errors; int rx_length_errors; int rx_over_errors; int rx_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;


 scalar_t__ EL3_STATUS ;
 scalar_t__ RX_FIFO ;
 scalar_t__ RX_STATUS ;
 int RxDiscard ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int insl (scalar_t__,int ,short) ;
 short inw (scalar_t__) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,short) ;
 int netdev_dbg (struct net_device*,char*,short,...) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,short) ;
 int skb_reserve (struct sk_buff*,int) ;
 int tc589_wait_for_completion (struct net_device*,int ) ;

__attribute__((used)) static int el3_rx(struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;
 int worklimit = 32;
 short rx_status;

 netdev_dbg(dev, "in rx_packet(), status %4.4x, rx_status %4.4x.\n",
        inw(ioaddr+EL3_STATUS), inw(ioaddr+RX_STATUS));
 while (!((rx_status = inw(ioaddr + RX_STATUS)) & 0x8000) &&
      worklimit > 0) {
  worklimit--;
  if (rx_status & 0x4000) {
   short error = rx_status & 0x3800;
   dev->stats.rx_errors++;
   switch (error) {
   case 0x0000:
    dev->stats.rx_over_errors++;
    break;
   case 0x0800:
    dev->stats.rx_length_errors++;
    break;
   case 0x1000:
    dev->stats.rx_frame_errors++;
    break;
   case 0x1800:
    dev->stats.rx_length_errors++;
    break;
   case 0x2000:
    dev->stats.rx_frame_errors++;
    break;
   case 0x2800:
    dev->stats.rx_crc_errors++;
    break;
   }
  } else {
   short pkt_len = rx_status & 0x7ff;
   struct sk_buff *skb;

   skb = netdev_alloc_skb(dev, pkt_len + 5);

   netdev_dbg(dev, "    Receiving packet size %d status %4.4x.\n",
         pkt_len, rx_status);
   if (skb != ((void*)0)) {
    skb_reserve(skb, 2);
    insl(ioaddr+RX_FIFO, skb_put(skb, pkt_len),
   (pkt_len+3)>>2);
    skb->protocol = eth_type_trans(skb, dev);
    netif_rx(skb);
    dev->stats.rx_packets++;
    dev->stats.rx_bytes += pkt_len;
   } else {
    netdev_dbg(dev, "couldn't allocate a sk_buff of size %d.\n",
      pkt_len);
    dev->stats.rx_dropped++;
   }
  }

  tc589_wait_for_completion(dev, RxDiscard);
 }
 if (worklimit == 0)
  netdev_warn(dev, "too much work in el3_rx!\n");
 return 0;
}
