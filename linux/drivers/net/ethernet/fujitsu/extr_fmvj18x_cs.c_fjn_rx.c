
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct sk_buff {int * data; int protocol; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_dropped; int rx_errors; int rx_over_errors; int rx_crc_errors; int rx_frame_errors; int rx_length_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; int name; } ;


 scalar_t__ DATAPORT ;
 int F_ALG_ERR ;
 int F_BUF_EMP ;
 int F_CRC_ERR ;
 int F_LEN_ERR ;
 int F_OVR_FLO ;
 int F_SKP_PKT ;
 scalar_t__ RX_MODE ;
 scalar_t__ RX_SKIP ;
 scalar_t__ RX_STATUS ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int inb (scalar_t__) ;
 int insw (scalar_t__,int ,int) ;
 int inw (scalar_t__) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netdev_dbg (struct net_device*,char*,int,int) ;
 int netdev_notice (struct net_device*,char*,int) ;
 int netif_rx (struct sk_buff*) ;
 int outb (int ,scalar_t__) ;
 int pr_debug (char*,...) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void fjn_rx(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    int boguscount = 10;

    pr_debug("%s: in rx_packet(), rx_status %02x.\n",
   dev->name, inb(ioaddr + RX_STATUS));

    while ((inb(ioaddr + RX_MODE) & F_BUF_EMP) == 0) {
 u_short status = inw(ioaddr + DATAPORT);

 netdev_dbg(dev, "Rxing packet mode %02x status %04x.\n",
     inb(ioaddr + RX_MODE), status);

 if (status == 0) {
     outb(F_SKP_PKT, ioaddr + RX_SKIP);
     break;
 }

 if ((status & 0xF0) != 0x20) {
     dev->stats.rx_errors++;
     if (status & F_LEN_ERR) dev->stats.rx_length_errors++;
     if (status & F_ALG_ERR) dev->stats.rx_frame_errors++;
     if (status & F_CRC_ERR) dev->stats.rx_crc_errors++;
     if (status & F_OVR_FLO) dev->stats.rx_over_errors++;
 } else {
     u_short pkt_len = inw(ioaddr + DATAPORT);

     struct sk_buff *skb;

     if (pkt_len > 1550) {
  netdev_notice(dev, "The FMV-18x claimed a very large packet, size %d\n",
         pkt_len);
  outb(F_SKP_PKT, ioaddr + RX_SKIP);
  dev->stats.rx_errors++;
  break;
     }
     skb = netdev_alloc_skb(dev, pkt_len + 2);
     if (skb == ((void*)0)) {
  outb(F_SKP_PKT, ioaddr + RX_SKIP);
  dev->stats.rx_dropped++;
  break;
     }

     skb_reserve(skb, 2);
     insw(ioaddr + DATAPORT, skb_put(skb, pkt_len),
   (pkt_len + 1) >> 1);
     skb->protocol = eth_type_trans(skb, dev);

     {
  int i;
  pr_debug("%s: Rxed packet of length %d: ",
   dev->name, pkt_len);
  for (i = 0; i < 14; i++)
   pr_debug(" %02x", skb->data[i]);
  pr_debug(".\n");
     }

     netif_rx(skb);
     dev->stats.rx_packets++;
     dev->stats.rx_bytes += pkt_len;
 }
 if (--boguscount <= 0)
     break;
    }
}
