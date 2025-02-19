
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_window_errors; int tx_heartbeat_errors; int tx_fifo_errors; int tx_carrier_errors; scalar_t__ collisions; int tx_aborted_errors; int tx_errors; int tx_packets; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; } ;
struct ei_device {int tx1; int lasttx; int tx2; int txing; scalar_t__ tx_start_page; int name; int txqueue; } ;


 scalar_t__ EN0_ISR ;
 scalar_t__ EN0_TSR ;
 int ENISR_TX ;
 int ENTSR_ABT ;
 int ENTSR_CDH ;
 int ENTSR_COL ;
 int ENTSR_CRS ;
 int ENTSR_FU ;
 int ENTSR_OWC ;
 int ENTSR_PTX ;
 int NS8390_trigger_send (struct net_device*,int,scalar_t__) ;
 int ei_inb (scalar_t__) ;
 int ei_outb_p (int ,scalar_t__) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_err (char*,int ,int,int) ;

__attribute__((used)) static void ei_tx_intr(struct net_device *dev)
{
 unsigned long e8390_base = dev->base_addr;
 struct ei_device *ei_local = netdev_priv(dev);
 int status = ei_inb(e8390_base + EN0_TSR);

 ei_outb_p(ENISR_TX, e8390_base + EN0_ISR);





 ei_local->txqueue--;

 if (ei_local->tx1 < 0) {
  if (ei_local->lasttx != 1 && ei_local->lasttx != -1)
   pr_err("%s: bogus last_tx_buffer %d, tx1=%d\n",
          ei_local->name, ei_local->lasttx, ei_local->tx1);
  ei_local->tx1 = 0;
  if (ei_local->tx2 > 0) {
   ei_local->txing = 1;
   NS8390_trigger_send(dev, ei_local->tx2, ei_local->tx_start_page + 6);
   netif_trans_update(dev);
   ei_local->tx2 = -1,
   ei_local->lasttx = 2;
  } else
   ei_local->lasttx = 20, ei_local->txing = 0;
 } else if (ei_local->tx2 < 0) {
  if (ei_local->lasttx != 2 && ei_local->lasttx != -2)
   pr_err("%s: bogus last_tx_buffer %d, tx2=%d\n",
          ei_local->name, ei_local->lasttx, ei_local->tx2);
  ei_local->tx2 = 0;
  if (ei_local->tx1 > 0) {
   ei_local->txing = 1;
   NS8390_trigger_send(dev, ei_local->tx1, ei_local->tx_start_page);
   netif_trans_update(dev);
   ei_local->tx1 = -1;
   ei_local->lasttx = 1;
  } else
   ei_local->lasttx = 10, ei_local->txing = 0;
 }





 if (status & ENTSR_COL)
  dev->stats.collisions++;
 if (status & ENTSR_PTX)
  dev->stats.tx_packets++;
 else {
  dev->stats.tx_errors++;
  if (status & ENTSR_ABT) {
   dev->stats.tx_aborted_errors++;
   dev->stats.collisions += 16;
  }
  if (status & ENTSR_CRS)
   dev->stats.tx_carrier_errors++;
  if (status & ENTSR_FU)
   dev->stats.tx_fifo_errors++;
  if (status & ENTSR_CDH)
   dev->stats.tx_heartbeat_errors++;
  if (status & ENTSR_OWC)
   dev->stats.tx_window_errors++;
 }
 netif_wake_queue(dev);
}
