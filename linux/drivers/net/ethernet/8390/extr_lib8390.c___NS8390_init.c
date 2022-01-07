
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned long base_addr; int* dev_addr; } ;
struct ei_device {int tx_start_page; int rx_start_page; int stop_page; int current_page; scalar_t__ txing; scalar_t__ tx2; scalar_t__ tx1; scalar_t__ bigendian; scalar_t__ word16; } ;
struct e8390_pkt_hdr {int dummy; } ;


 scalar_t__ E8390_CMD ;
 int E8390_NODMA ;
 int E8390_PAGE0 ;
 int E8390_PAGE1 ;
 int E8390_RXCONFIG ;
 int E8390_RXOFF ;
 int E8390_START ;
 int E8390_STOP ;
 int E8390_TXCONFIG ;
 int E8390_TXOFF ;
 scalar_t__ EN0_BOUNDARY ;
 scalar_t__ EN0_DCFG ;
 scalar_t__ EN0_IMR ;
 scalar_t__ EN0_ISR ;
 scalar_t__ EN0_RCNTHI ;
 scalar_t__ EN0_RCNTLO ;
 scalar_t__ EN0_RXCR ;
 scalar_t__ EN0_STARTPG ;
 scalar_t__ EN0_STOPPG ;
 scalar_t__ EN0_TPSR ;
 scalar_t__ EN0_TXCR ;
 scalar_t__ EN1_CURPAG ;
 scalar_t__ EN1_PHYS_SHIFT (int) ;
 int ENDCFG_BOS ;
 int ENDCFG_WTS ;
 int ENISR_ALL ;
 int do_set_multicast_list (struct net_device*) ;
 int ei_inb_p (scalar_t__) ;
 int ei_outb_p (int,scalar_t__) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_probe (struct ei_device*) ;
 int panic (char*) ;

__attribute__((used)) static void __NS8390_init(struct net_device *dev, int startp)
{
 unsigned long e8390_base = dev->base_addr;
 struct ei_device *ei_local = netdev_priv(dev);
 int i;
 int endcfg = ei_local->word16
     ? (0x48 | ENDCFG_WTS | (ei_local->bigendian ? ENDCFG_BOS : 0))
     : 0x48;

 if (sizeof(struct e8390_pkt_hdr) != 4)
  panic("8390.c: header struct mispacked\n");

 ei_outb_p(E8390_NODMA+E8390_PAGE0+E8390_STOP, e8390_base+E8390_CMD);
 ei_outb_p(endcfg, e8390_base + EN0_DCFG);

 ei_outb_p(0x00, e8390_base + EN0_RCNTLO);
 ei_outb_p(0x00, e8390_base + EN0_RCNTHI);

 ei_outb_p(E8390_RXOFF, e8390_base + EN0_RXCR);
 ei_outb_p(E8390_TXOFF, e8390_base + EN0_TXCR);

 ei_outb_p(ei_local->tx_start_page, e8390_base + EN0_TPSR);
 ei_local->tx1 = ei_local->tx2 = 0;
 ei_outb_p(ei_local->rx_start_page, e8390_base + EN0_STARTPG);
 ei_outb_p(ei_local->stop_page-1, e8390_base + EN0_BOUNDARY);
 ei_local->current_page = ei_local->rx_start_page;
 ei_outb_p(ei_local->stop_page, e8390_base + EN0_STOPPG);

 ei_outb_p(0xFF, e8390_base + EN0_ISR);
 ei_outb_p(0x00, e8390_base + EN0_IMR);



 ei_outb_p(E8390_NODMA + E8390_PAGE1 + E8390_STOP, e8390_base+E8390_CMD);
 for (i = 0; i < 6; i++) {
  ei_outb_p(dev->dev_addr[i], e8390_base + EN1_PHYS_SHIFT(i));
  if ((netif_msg_probe(ei_local)) &&
      ei_inb_p(e8390_base + EN1_PHYS_SHIFT(i)) != dev->dev_addr[i])
   netdev_err(dev,
       "Hw. address read/write mismap %d\n", i);
 }

 ei_outb_p(ei_local->rx_start_page, e8390_base + EN1_CURPAG);
 ei_outb_p(E8390_NODMA+E8390_PAGE0+E8390_STOP, e8390_base+E8390_CMD);

 ei_local->tx1 = ei_local->tx2 = 0;
 ei_local->txing = 0;

 if (startp) {
  ei_outb_p(0xff, e8390_base + EN0_ISR);
  ei_outb_p(ENISR_ALL, e8390_base + EN0_IMR);
  ei_outb_p(E8390_NODMA+E8390_PAGE0+E8390_START, e8390_base+E8390_CMD);
  ei_outb_p(E8390_TXCONFIG, e8390_base + EN0_TXCR);

  ei_outb_p(E8390_RXCONFIG, e8390_base + EN0_RXCR);
  do_set_multicast_list(dev);
 }
}
