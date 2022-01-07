
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_window_errors; int tx_heartbeat_errors; int tx_carrier_errors; int tx_errors; } ;
struct net_device {long base_addr; TYPE_1__ stats; } ;


 scalar_t__ EN0_TSR ;
 unsigned char ENTSR_ABT ;
 unsigned char ENTSR_CDH ;
 unsigned char ENTSR_CRS ;
 unsigned char ENTSR_FU ;
 unsigned char ENTSR_ND ;
 unsigned char ENTSR_OWC ;
 int ei_tx_intr (struct net_device*) ;
 unsigned char inb_p (scalar_t__) ;
 int netdev_dbg (struct net_device*,char*,unsigned char) ;
 int pr_cont (char*) ;

__attribute__((used)) static void ei_tx_err(struct net_device *dev)
{
 long e8390_base = dev->base_addr;
 unsigned char txsr = inb_p(e8390_base+EN0_TSR);
 unsigned char tx_was_aborted = txsr & (ENTSR_ABT+ENTSR_FU);
 if (tx_was_aborted)
  ei_tx_intr(dev);
 else
 {
  dev->stats.tx_errors++;
  if (txsr & ENTSR_CRS) dev->stats.tx_carrier_errors++;
  if (txsr & ENTSR_CDH) dev->stats.tx_heartbeat_errors++;
  if (txsr & ENTSR_OWC) dev->stats.tx_window_errors++;
 }
}
