
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_2__ {int rx_bytes; int rx_fifo_errors; int rx_errors; int multicast; int rx_packets; int rx_dropped; int rx_length_errors; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; } ;
struct ei_device {int stop_page; int rx_start_page; unsigned char current_page; } ;
struct e8390_pkt_hdr {int count; int status; unsigned char next; } ;
typedef int rx_frame ;


 scalar_t__ E8390_CMD ;
 unsigned char E8390_NODMA ;
 unsigned char E8390_PAGE0 ;
 unsigned char E8390_PAGE1 ;
 scalar_t__ EN0_BOUNDARY ;
 scalar_t__ EN0_ISR ;
 scalar_t__ EN1_CURPAG ;
 unsigned char ENISR_RX ;
 unsigned char ENISR_RX_ERR ;
 int ENRSR_FO ;
 int ENRSR_PHY ;
 int ENRSR_RXOK ;
 int ei_block_input (struct net_device*,int,struct sk_buff*,unsigned short) ;
 int ei_get_8390_hdr (struct net_device*,struct e8390_pkt_hdr*,unsigned char) ;
 int ei_inb_p (scalar_t__) ;
 int ei_outb (int,scalar_t__) ;
 int ei_outb_p (unsigned char,scalar_t__) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netdev_err (struct net_device*,char*,unsigned char,unsigned char) ;
 int netdev_notice (struct net_device*,char*,unsigned char) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*,int,int,unsigned char) ;
 int netif_err (struct ei_device*,int ,struct net_device*,char*,int,...) ;
 scalar_t__ netif_msg_rx_status (struct ei_device*) ;
 int netif_rx (struct sk_buff*) ;
 int rx_err ;
 int rx_status ;
 int skb_defer_rx_timestamp (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void ei_receive(struct net_device *dev)
{
 unsigned long e8390_base = dev->base_addr;
 struct ei_device *ei_local = netdev_priv(dev);
 unsigned char rxing_page, this_frame, next_frame;
 unsigned short current_offset;
 int rx_pkt_count = 0;
 struct e8390_pkt_hdr rx_frame;
 int num_rx_pages = ei_local->stop_page-ei_local->rx_start_page;

 while (++rx_pkt_count < 10) {
  int pkt_len, pkt_stat;


  ei_outb_p(E8390_NODMA+E8390_PAGE1, e8390_base + E8390_CMD);
  rxing_page = ei_inb_p(e8390_base + EN1_CURPAG);
  ei_outb_p(E8390_NODMA+E8390_PAGE0, e8390_base + E8390_CMD);


  this_frame = ei_inb_p(e8390_base + EN0_BOUNDARY) + 1;
  if (this_frame >= ei_local->stop_page)
   this_frame = ei_local->rx_start_page;







  if ((netif_msg_rx_status(ei_local)) &&
      this_frame != ei_local->current_page &&
      (this_frame != 0x0 || rxing_page != 0xFF))
   netdev_err(dev,
       "mismatched read page pointers %2x vs %2x\n",
       this_frame, ei_local->current_page);

  if (this_frame == rxing_page)
   break;

  current_offset = this_frame << 8;
  ei_get_8390_hdr(dev, &rx_frame, this_frame);

  pkt_len = rx_frame.count - sizeof(struct e8390_pkt_hdr);
  pkt_stat = rx_frame.status;

  next_frame = this_frame + 1 + ((pkt_len+4)>>8);




  if (rx_frame.next != next_frame &&
      rx_frame.next != next_frame + 1 &&
      rx_frame.next != next_frame - num_rx_pages &&
      rx_frame.next != next_frame + 1 - num_rx_pages) {
   ei_local->current_page = rxing_page;
   ei_outb(ei_local->current_page-1, e8390_base+EN0_BOUNDARY);
   dev->stats.rx_errors++;
   continue;
  }

  if (pkt_len < 60 || pkt_len > 1518) {
   netif_dbg(ei_local, rx_status, dev,
      "bogus packet size: %d, status=%#2x nxpg=%#2x\n",
      rx_frame.count, rx_frame.status,
      rx_frame.next);
   dev->stats.rx_errors++;
   dev->stats.rx_length_errors++;
  } else if ((pkt_stat & 0x0F) == ENRSR_RXOK) {
   struct sk_buff *skb;

   skb = netdev_alloc_skb(dev, pkt_len + 2);
   if (skb == ((void*)0)) {
    netif_err(ei_local, rx_err, dev,
       "Couldn't allocate a sk_buff of size %d\n",
       pkt_len);
    dev->stats.rx_dropped++;
    break;
   } else {
    skb_reserve(skb, 2);
    skb_put(skb, pkt_len);
    ei_block_input(dev, pkt_len, skb, current_offset + sizeof(rx_frame));
    skb->protocol = eth_type_trans(skb, dev);
    if (!skb_defer_rx_timestamp(skb))
     netif_rx(skb);
    dev->stats.rx_packets++;
    dev->stats.rx_bytes += pkt_len;
    if (pkt_stat & ENRSR_PHY)
     dev->stats.multicast++;
   }
  } else {
   netif_err(ei_local, rx_err, dev,
      "bogus packet: status=%#2x nxpg=%#2x size=%d\n",
      rx_frame.status, rx_frame.next,
      rx_frame.count);
   dev->stats.rx_errors++;

   if (pkt_stat & ENRSR_FO)
    dev->stats.rx_fifo_errors++;
  }
  next_frame = rx_frame.next;


  if (next_frame >= ei_local->stop_page) {
   netdev_notice(dev, "next frame inconsistency, %#2x\n",
          next_frame);
   next_frame = ei_local->rx_start_page;
  }
  ei_local->current_page = next_frame;
  ei_outb_p(next_frame-1, e8390_base+EN0_BOUNDARY);
 }



 ei_outb_p(ENISR_RX+ENISR_RX_ERR, e8390_base+EN0_ISR);
}
