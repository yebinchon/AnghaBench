
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct net_device_stats {unsigned int rx_packets; int rx_dropped; int rx_errors; int rx_length_errors; int rx_fifo_errors; int rx_crc_errors; int rx_over_errors; } ;
struct net_device {struct net_device_stats stats; int * dev_addr; int name; } ;
struct TYPE_3__ {unsigned int command; } ;
struct TYPE_4__ {unsigned int rx_head; TYPE_1__ regs; } ;


 unsigned int CMD_RXON ;
 int REG_COMMAND ;
 int REG_RECVEND ;
 int REG_RECVPTR ;
 int REG_STATUS ;
 unsigned int RXHDR_CHAINCONTINUE ;
 unsigned int RXHDR_RECEIVE ;
 unsigned int RXSTAT_CRCERROR ;
 unsigned int RXSTAT_DONE ;
 unsigned int RXSTAT_DRIBBLEERROR ;
 unsigned int RXSTAT_OVERSIZE ;
 unsigned int RXSTAT_SHORTPACKET ;
 unsigned int RX_END ;
 unsigned int RX_START ;
 int STAT_RXON ;
 int buffer_read ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ether3_inw (int ) ;
 int ether3_ledon (struct net_device*) ;
 int ether3_outw (unsigned int,int ) ;
 int ether3_readbuffer (struct net_device*,unsigned char*,unsigned int) ;
 unsigned int ether3_readword (struct net_device*) ;
 int ether3_setbuffer (struct net_device*,int ,unsigned int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,unsigned int) ;
 int netif_rx (struct sk_buff*) ;
 unsigned int ntohs (unsigned int) ;
 int printk (char*,...) ;
 TYPE_2__* priv (struct net_device*) ;
 unsigned char* skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int ether3_rx(struct net_device *dev, unsigned int maxcnt)
{
 unsigned int next_ptr = priv(dev)->rx_head, received = 0;

 ether3_ledon(dev);

 do {
  unsigned int this_ptr, status;
  unsigned char addrs[16];







  {
   unsigned int temp_ptr;
   ether3_setbuffer(dev, buffer_read, next_ptr);
   temp_ptr = ether3_readword(dev);
   status = ether3_readword(dev);
   if ((status & (RXSTAT_DONE | RXHDR_CHAINCONTINUE | RXHDR_RECEIVE)) !=
    (RXSTAT_DONE | RXHDR_CHAINCONTINUE) || !temp_ptr)
    break;

   this_ptr = next_ptr + 4;
   next_ptr = ntohs(temp_ptr);
  }
  ether3_setbuffer(dev, buffer_read, this_ptr);
  ether3_readbuffer(dev, addrs+2, 12);

if (next_ptr < RX_START || next_ptr >= RX_END) {
 int i;
 printk("%s: bad next pointer @%04X: ", dev->name, priv(dev)->rx_head);
 printk("%02X %02X %02X %02X ", next_ptr >> 8, next_ptr & 255, status & 255, status >> 8);
 for (i = 2; i < 14; i++)
   printk("%02X ", addrs[i]);
 printk("\n");
 next_ptr = priv(dev)->rx_head;
 break;
}



  if (!(*(unsigned long *)&dev->dev_addr[0] ^ *(unsigned long *)&addrs[2+6]) &&
      !(*(unsigned short *)&dev->dev_addr[4] ^ *(unsigned short *)&addrs[2+10])) {
   maxcnt ++;
   ether3_outw(next_ptr >> 8, REG_RECVEND);
  } else
  if (!(status & (RXSTAT_OVERSIZE|RXSTAT_CRCERROR|RXSTAT_DRIBBLEERROR|RXSTAT_SHORTPACKET))) {
   unsigned int length = next_ptr - this_ptr;
   struct sk_buff *skb;

   if (next_ptr <= this_ptr)
    length += RX_END - RX_START;

   skb = netdev_alloc_skb(dev, length + 2);
   if (skb) {
    unsigned char *buf;

    skb_reserve(skb, 2);
    buf = skb_put(skb, length);
    ether3_readbuffer(dev, buf + 12, length - 12);
    ether3_outw(next_ptr >> 8, REG_RECVEND);
    *(unsigned short *)(buf + 0) = *(unsigned short *)(addrs + 2);
    *(unsigned long *)(buf + 2) = *(unsigned long *)(addrs + 4);
    *(unsigned long *)(buf + 6) = *(unsigned long *)(addrs + 8);
    *(unsigned short *)(buf + 10) = *(unsigned short *)(addrs + 12);
    skb->protocol = eth_type_trans(skb, dev);
    netif_rx(skb);
    received ++;
   } else {
    ether3_outw(next_ptr >> 8, REG_RECVEND);
    dev->stats.rx_dropped++;
    goto done;
   }
  } else {
   struct net_device_stats *stats = &dev->stats;
   ether3_outw(next_ptr >> 8, REG_RECVEND);
   if (status & RXSTAT_OVERSIZE) stats->rx_over_errors ++;
   if (status & RXSTAT_CRCERROR) stats->rx_crc_errors ++;
   if (status & RXSTAT_DRIBBLEERROR) stats->rx_fifo_errors ++;
   if (status & RXSTAT_SHORTPACKET) stats->rx_length_errors ++;
   stats->rx_errors++;
  }
 }
 while (-- maxcnt);

done:
 dev->stats.rx_packets += received;
 priv(dev)->rx_head = next_ptr;




 if (!(ether3_inw(REG_STATUS) & STAT_RXON)) {
  dev->stats.rx_dropped++;
      ether3_outw(next_ptr, REG_RECVPTR);
  ether3_outw(priv(dev)->regs.command | CMD_RXON, REG_COMMAND);
 }

 return maxcnt;
}
