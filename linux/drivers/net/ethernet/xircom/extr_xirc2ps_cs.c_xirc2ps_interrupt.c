
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u_long ;
typedef int u_char ;
struct sk_buff {int protocol; } ;
struct TYPE_2__ {unsigned int rx_bytes; int tx_packets; int tx_aborted_errors; int rx_over_errors; int rx_fifo_errors; int rx_crc_errors; int rx_frame_errors; int multicast; int rx_packets; int rx_dropped; } ;
struct net_device {unsigned int base_addr; unsigned int name; TYPE_1__ stats; } ;
struct local_info {scalar_t__ silicon; unsigned int last_ptr_value; scalar_t__ mohawk; } ;
typedef int irqreturn_t ;


 unsigned int AlignErr ;
 unsigned int CRCErr ;
 unsigned int ClearRxOvrun ;
 unsigned int EnableIntr ;
 unsigned int FullPktRcvd ;
 int GetByte (unsigned int) ;
 unsigned int GetWord (int ) ;
 int HZ ;
 int IRQ_HANDLED ;
 unsigned int PhyPkt ;
 unsigned int PktRxOk ;
 unsigned int PktTooLong ;
 unsigned int PktTxed ;
 int PutByte (unsigned int,unsigned int) ;
 int PutWord (int ,int) ;
 unsigned int RestartTx ;
 int SelectPage (int) ;
 int XIRCREG0_DO ;
 unsigned int XIRCREG0_PTR ;
 int XIRCREG0_RBC ;
 unsigned int XIRCREG0_RSR ;
 unsigned int XIRCREG40_RXST0 ;
 unsigned int XIRCREG40_TXST0 ;
 unsigned int XIRCREG40_TXST1 ;
 int XIRCREG5_RHSA0 ;
 unsigned int XIRCREG_CR ;
 unsigned int XIRCREG_EDP ;
 unsigned int XIRCREG_ESR ;
 unsigned int XIRCREG_ISR ;
 unsigned int XIRCREG_PR ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int inl (unsigned int) ;
 int insw (unsigned int,int*,unsigned int) ;
 int jiffies ;
 unsigned int len ;
 scalar_t__ lockup_hack ;
 unsigned int maxrx_bytes ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,unsigned int) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_debug (char*,...) ;
 int* skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static irqreturn_t
xirc2ps_interrupt(int irq, void *dev_id)
{
    struct net_device *dev = (struct net_device *)dev_id;
    struct local_info *lp = netdev_priv(dev);
    unsigned int ioaddr;
    u_char saved_page;
    unsigned bytes_rcvd;
    unsigned int_status, eth_status, rx_status, tx_status;
    unsigned rsr, pktlen;
    ulong start_ticks = jiffies;




    if (!netif_device_present(dev))
 return IRQ_HANDLED;

    ioaddr = dev->base_addr;
    if (lp->mohawk) {
 PutByte(XIRCREG_CR, 0);
    }

    pr_debug("%s: interrupt %d at %#x.\n", dev->name, irq, ioaddr);

    saved_page = GetByte(XIRCREG_PR);



    int_status = GetByte(XIRCREG_ISR);
    bytes_rcvd = 0;
  loop_entry:
    if (int_status == 0xff) {
 pr_debug("%s: interrupt %d for dead card\n", dev->name, irq);
 goto leave;
    }
    eth_status = GetByte(XIRCREG_ESR);

    SelectPage(0x40);
    rx_status = GetByte(XIRCREG40_RXST0);
    PutByte(XIRCREG40_RXST0, (~rx_status & 0xff));
    tx_status = GetByte(XIRCREG40_TXST0);
    tx_status |= GetByte(XIRCREG40_TXST1) << 8;
    PutByte(XIRCREG40_TXST0, 0);
    PutByte(XIRCREG40_TXST1, 0);

    pr_debug("%s: ISR=%#2.2x ESR=%#2.2x RSR=%#2.2x TSR=%#4.4x\n",
   dev->name, int_status, eth_status, rx_status, tx_status);


    SelectPage(0);
    while (eth_status & FullPktRcvd) {
 rsr = GetByte(XIRCREG0_RSR);
 if (bytes_rcvd > maxrx_bytes && (rsr & PktRxOk)) {


     dev->stats.rx_dropped++;
     pr_debug("%s: RX drop, too much done\n", dev->name);
 } else if (rsr & PktRxOk) {
     struct sk_buff *skb;

     pktlen = GetWord(XIRCREG0_RBC);
     bytes_rcvd += pktlen;

     pr_debug("rsr=%#02x packet_length=%u\n", rsr, pktlen);


     skb = netdev_alloc_skb(dev, pktlen + 3);
     if (!skb) {
  dev->stats.rx_dropped++;
     } else {
  skb_reserve(skb, 2);
  if (lp->silicon == 0 ) {
      unsigned rhsa;

      SelectPage(5);
      rhsa = GetWord(XIRCREG5_RHSA0);
      SelectPage(0);
      rhsa += 3;
      if (rhsa >= 0x8000)
   rhsa = 0;
      if (rhsa + pktlen > 0x8000) {
   unsigned i;
   u_char *buf = skb_put(skb, pktlen);
   for (i=0; i < pktlen ; i++, rhsa++) {
       buf[i] = GetByte(XIRCREG_EDP);
       if (rhsa == 0x8000) {
    rhsa = 0;
    i--;
       }
   }
      } else {
   insw(ioaddr+XIRCREG_EDP,
    skb_put(skb, pktlen), (pktlen+1)>>1);
      }
  }
  else {
      insw(ioaddr+XIRCREG_EDP, skb_put(skb, pktlen),
       (pktlen+1)>>1);
  }
  skb->protocol = eth_type_trans(skb, dev);
  netif_rx(skb);
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += pktlen;
  if (!(rsr & PhyPkt))
      dev->stats.multicast++;
     }
 } else {
     pr_debug("rsr=%#02x\n", rsr);
 }
 if (rsr & PktTooLong) {
     dev->stats.rx_frame_errors++;
     pr_debug("%s: Packet too long\n", dev->name);
 }
 if (rsr & CRCErr) {
     dev->stats.rx_crc_errors++;
     pr_debug("%s: CRC error\n", dev->name);
 }
 if (rsr & AlignErr) {
     dev->stats.rx_fifo_errors++;
     pr_debug("%s: Alignment error\n", dev->name);
 }


 PutWord(XIRCREG0_DO, 0x8000);


 eth_status = GetByte(XIRCREG_ESR);
    }
    if (rx_status & 0x10) {
 dev->stats.rx_over_errors++;
 PutByte(XIRCREG_CR, ClearRxOvrun);
 pr_debug("receive overrun cleared\n");
    }


    if (int_status & PktTxed) {
 unsigned n, nn;

 n = lp->last_ptr_value;
 nn = GetByte(XIRCREG0_PTR);
 lp->last_ptr_value = nn;
 if (nn < n)
     dev->stats.tx_packets += 256 - n;
 else if (n == nn) {
     pr_debug("PTR not changed?\n");
 } else
     dev->stats.tx_packets += lp->last_ptr_value - n;
 netif_wake_queue(dev);
    }
    if (tx_status & 0x0002) {
 pr_debug("tx restarted due to excessive collisions\n");
 PutByte(XIRCREG_CR, RestartTx);
    }
    if (tx_status & 0x0040)
 dev->stats.tx_aborted_errors++;





    if (bytes_rcvd > 1000) {
 u_long duration = jiffies - start_ticks;

 if (duration >= HZ/10) {
     maxrx_bytes = (bytes_rcvd * (HZ/10)) / duration;
     if (maxrx_bytes < 2000)
  maxrx_bytes = 2000;
     else if (maxrx_bytes > 22000)
  maxrx_bytes = 22000;
     pr_debug("set maxrx=%u (rcvd=%u ticks=%lu)\n",
    maxrx_bytes, bytes_rcvd, duration);
 } else if (!duration && maxrx_bytes < 22000) {

     maxrx_bytes += 2000;
     if (maxrx_bytes > 22000)
  maxrx_bytes = 22000;
     pr_debug("set maxrx=%u\n", maxrx_bytes);
 }
    }

  leave:
    if (lockup_hack) {
 if (int_status != 0xff && (int_status = GetByte(XIRCREG_ISR)) != 0)
     goto loop_entry;
    }
    SelectPage(saved_page);
    PutByte(XIRCREG_CR, EnableIntr);




    return IRQ_HANDLED;
}
