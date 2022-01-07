
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_frame_errors; int rx_crc_errors; int rx_missed_errors; } ;
struct net_device {long base_addr; TYPE_1__ stats; } ;
struct ei_device {int irqlock; int page_lock; } ;
typedef int irqreturn_t ;


 scalar_t__ EN0_COUNTER0 ;
 scalar_t__ EN0_COUNTER1 ;
 scalar_t__ EN0_COUNTER2 ;
 scalar_t__ EN0_IMR ;
 scalar_t__ EN0_ISR ;
 int ENISR_ALL ;
 int ENISR_COUNTERS ;
 int ENISR_OVER ;
 int ENISR_RX ;
 int ENISR_RX_ERR ;
 int ENISR_TX ;
 int ENISR_TX_ERR ;
 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int MAX_SERVICE ;
 int ei_receive (struct net_device*) ;
 int ei_rx_overrun (struct net_device*) ;
 int ei_tx_err (struct net_device*) ;
 int ei_tx_intr (struct net_device*) ;
 int inb (scalar_t__) ;
 int inb_p (scalar_t__) ;
 int intr ;
 int netdev_info (struct net_device*,char*,char const*,int,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*,int) ;
 scalar_t__ netif_msg_intr (struct ei_device*) ;
 int netif_running (struct net_device*) ;
 int netif_warn (struct ei_device*,int ,struct net_device*,char*) ;
 int outb_p (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ax_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 long e8390_base;
 int interrupts, nr_serviced = 0, i;
 struct ei_device *ei_local;
     int handled = 0;
 unsigned long flags;

 e8390_base = dev->base_addr;
 ei_local = netdev_priv(dev);





 spin_lock_irqsave(&ei_local->page_lock, flags);

 if (ei_local->irqlock) {

  const char *msg;

  if (ei_local->irqlock)
   msg = "Interrupted while interrupts are masked!";
  else
   msg = "Reentering the interrupt handler!";
  netdev_info(dev, "%s, isr=%#2x imr=%#2x\n",
       msg,
       inb_p(e8390_base + EN0_ISR),
       inb_p(e8390_base + EN0_IMR));

  spin_unlock_irqrestore(&ei_local->page_lock, flags);
  return IRQ_NONE;
 }

 netif_dbg(ei_local, intr, dev, "interrupt(isr=%#2.2x)\n",
    inb_p(e8390_base + EN0_ISR));

 outb_p(0x00, e8390_base + EN0_ISR);
 ei_local->irqlock = 1;


 while ((interrupts = inb_p(e8390_base + EN0_ISR)) != 0 &&
        ++nr_serviced < MAX_SERVICE)
 {
  if (!netif_running(dev) || (interrupts == 0xff)) {
   netif_warn(ei_local, intr, dev,
       "interrupt from stopped card\n");
   outb_p(interrupts, e8390_base + EN0_ISR);
   interrupts = 0;
   break;
  }
  handled = 1;


  outb_p(interrupts, e8390_base + EN0_ISR);
  for (i = 0; i < 10; i++) {
   if (!(inb(e8390_base + EN0_ISR) & interrupts))
    break;
   outb_p(0, e8390_base + EN0_ISR);
   outb_p(interrupts, e8390_base + EN0_ISR);
  }
  if (interrupts & ENISR_OVER)
   ei_rx_overrun(dev);
  else if (interrupts & (ENISR_RX+ENISR_RX_ERR))
  {

   ei_receive(dev);
  }

  if (interrupts & ENISR_TX)
   ei_tx_intr(dev);
  else if (interrupts & ENISR_TX_ERR)
   ei_tx_err(dev);

  if (interrupts & ENISR_COUNTERS)
  {
   dev->stats.rx_frame_errors += inb_p(e8390_base + EN0_COUNTER0);
   dev->stats.rx_crc_errors += inb_p(e8390_base + EN0_COUNTER1);
   dev->stats.rx_missed_errors+= inb_p(e8390_base + EN0_COUNTER2);
  }
 }

 if (interrupts && (netif_msg_intr(ei_local)))
 {
  handled = 1;
  if (nr_serviced >= MAX_SERVICE)
  {

   if (interrupts != 0xFF)
    netdev_warn(dev,
         "Too much work at interrupt, status %#2.2x\n",
         interrupts);
   outb_p(ENISR_ALL, e8390_base + EN0_ISR);
  } else {
   netdev_warn(dev, "unknown interrupt %#2x\n",
        interrupts);
   outb_p(0xff, e8390_base + EN0_ISR);
  }
 }


 ei_local->irqlock = 0;
 outb_p(ENISR_ALL, e8390_base + EN0_IMR);

 spin_unlock_irqrestore(&ei_local->page_lock, flags);
 return IRQ_RETVAL(handled);
}
