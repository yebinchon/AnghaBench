
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_frame_errors; int rx_crc_errors; int rx_missed_errors; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; } ;
struct ei_device {int page_lock; scalar_t__ irqlock; } ;
typedef int irqreturn_t ;


 scalar_t__ E8390_CMD ;
 int E8390_NODMA ;
 int E8390_PAGE0 ;
 int E8390_START ;
 scalar_t__ EN0_COUNTER0 ;
 scalar_t__ EN0_COUNTER1 ;
 scalar_t__ EN0_COUNTER2 ;
 scalar_t__ EN0_IMR ;
 scalar_t__ EN0_ISR ;
 int ENISR_ALL ;
 int ENISR_COUNTERS ;
 int ENISR_OVER ;
 int ENISR_RDC ;
 int ENISR_RX ;
 int ENISR_RX_ERR ;
 int ENISR_TX ;
 int ENISR_TX_ERR ;
 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int MAX_SERVICE ;
 int ei_inb_p (scalar_t__) ;
 int ei_outb_p (int,scalar_t__) ;
 int ei_receive (struct net_device*) ;
 int ei_rx_overrun (struct net_device*) ;
 int ei_tx_err (struct net_device*) ;
 int ei_tx_intr (struct net_device*) ;
 int intr ;
 int netdev_err (struct net_device*,char*,int,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,...) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*,int) ;
 scalar_t__ netif_msg_intr (struct ei_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t __ei_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 unsigned long e8390_base = dev->base_addr;
 int interrupts, nr_serviced = 0;
 struct ei_device *ei_local = netdev_priv(dev);





 spin_lock(&ei_local->page_lock);

 if (ei_local->irqlock) {




  netdev_err(dev, "Interrupted while interrupts are masked! isr=%#2x imr=%#2x\n",
      ei_inb_p(e8390_base + EN0_ISR),
      ei_inb_p(e8390_base + EN0_IMR));
  spin_unlock(&ei_local->page_lock);
  return IRQ_NONE;
 }


 ei_outb_p(E8390_NODMA+E8390_PAGE0, e8390_base + E8390_CMD);
 netif_dbg(ei_local, intr, dev, "interrupt(isr=%#2.2x)\n",
    ei_inb_p(e8390_base + EN0_ISR));


 while ((interrupts = ei_inb_p(e8390_base + EN0_ISR)) != 0 &&
        ++nr_serviced < MAX_SERVICE) {
  if (!netif_running(dev)) {
   netdev_warn(dev, "interrupt from stopped card\n");

   ei_outb_p(interrupts, e8390_base + EN0_ISR);
   interrupts = 0;
   break;
  }
  if (interrupts & ENISR_OVER)
   ei_rx_overrun(dev);
  else if (interrupts & (ENISR_RX+ENISR_RX_ERR)) {

   ei_receive(dev);
  }

  if (interrupts & ENISR_TX)
   ei_tx_intr(dev);
  else if (interrupts & ENISR_TX_ERR)
   ei_tx_err(dev);

  if (interrupts & ENISR_COUNTERS) {
   dev->stats.rx_frame_errors += ei_inb_p(e8390_base + EN0_COUNTER0);
   dev->stats.rx_crc_errors += ei_inb_p(e8390_base + EN0_COUNTER1);
   dev->stats.rx_missed_errors += ei_inb_p(e8390_base + EN0_COUNTER2);
   ei_outb_p(ENISR_COUNTERS, e8390_base + EN0_ISR);
  }


  if (interrupts & ENISR_RDC)
   ei_outb_p(ENISR_RDC, e8390_base + EN0_ISR);

  ei_outb_p(E8390_NODMA+E8390_PAGE0+E8390_START, e8390_base + E8390_CMD);
 }

 if (interrupts && (netif_msg_intr(ei_local))) {
  ei_outb_p(E8390_NODMA+E8390_PAGE0+E8390_START, e8390_base + E8390_CMD);
  if (nr_serviced >= MAX_SERVICE) {

   if (interrupts != 0xFF)
    netdev_warn(dev, "Too much work at interrupt, status %#2.2x\n",
         interrupts);
   ei_outb_p(ENISR_ALL, e8390_base + EN0_ISR);
  } else {
   netdev_warn(dev, "unknown interrupt %#2x\n", interrupts);
   ei_outb_p(0xff, e8390_base + EN0_ISR);
  }
 }
 spin_unlock(&ei_local->page_lock);
 return IRQ_RETVAL(nr_serviced > 0);
}
