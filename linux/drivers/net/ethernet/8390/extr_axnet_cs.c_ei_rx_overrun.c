
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_over_errors; } ;
struct net_device {long base_addr; TYPE_1__ stats; } ;
struct ei_device {int dummy; } ;
struct axnet_dev {int duplex_flag; } ;


 scalar_t__ E8390_CMD ;
 int E8390_NODMA ;
 int E8390_PAGE0 ;
 int E8390_START ;
 int E8390_STOP ;
 int E8390_TRANS ;
 int E8390_TXCONFIG ;
 int E8390_TXOFF ;
 scalar_t__ EN0_ISR ;
 scalar_t__ EN0_RCNTHI ;
 scalar_t__ EN0_RCNTLO ;
 scalar_t__ EN0_TXCR ;
 int ENISR_TX ;
 int ENISR_TX_ERR ;
 struct axnet_dev* PRIV (struct net_device*) ;
 int ei_receive (struct net_device*) ;
 int inb_p (scalar_t__) ;
 int mdelay (int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*) ;
 int outb_p (int,scalar_t__) ;
 int rx_err ;

__attribute__((used)) static void ei_rx_overrun(struct net_device *dev)
{
 struct axnet_dev *info = PRIV(dev);
 long e8390_base = dev->base_addr;
 unsigned char was_txing, must_resend = 0;
 struct ei_device *ei_local = netdev_priv(dev);





 was_txing = inb_p(e8390_base+E8390_CMD) & E8390_TRANS;
 outb_p(E8390_NODMA+E8390_PAGE0+E8390_STOP, e8390_base+E8390_CMD);

 netif_dbg(ei_local, rx_err, dev, "Receiver overrun\n");
 dev->stats.rx_over_errors++;






 mdelay(2);




 outb_p(0x00, e8390_base+EN0_RCNTLO);
 outb_p(0x00, e8390_base+EN0_RCNTHI);






 if (was_txing)
 {
  unsigned char tx_completed = inb_p(e8390_base+EN0_ISR) & (ENISR_TX+ENISR_TX_ERR);
  if (!tx_completed)
   must_resend = 1;
 }





 outb_p(E8390_TXOFF, e8390_base + EN0_TXCR);
 outb_p(E8390_NODMA + E8390_PAGE0 + E8390_START, e8390_base + E8390_CMD);




 ei_receive(dev);




 outb_p(E8390_TXCONFIG | info->duplex_flag, e8390_base + EN0_TXCR);
 if (must_resend)
      outb_p(E8390_NODMA + E8390_PAGE0 + E8390_START + E8390_TRANS, e8390_base + E8390_CMD);
}
