
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_local {int send_underrun; int send_cmd; } ;
struct TYPE_2__ {int rx_missed_errors; int collisions; int tx_aborted_errors; int tx_window_errors; int tx_heartbeat_errors; int tx_carrier_errors; int tx_errors; int tx_packets; } ;
struct net_device {int base_addr; TYPE_1__ stats; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;

 int ISQ_EVENT_MASK ;
 scalar_t__ ISQ_PORT ;




 int READY_FOR_TX ;
 int TX_16_COL ;
 int TX_AFTER_381 ;
 int TX_AFTER_ALL ;
 int TX_LATE_COL ;
 int TX_LOST_CRS ;
 int TX_OK ;
 int TX_SQE_ERROR ;
 int TX_UNDERRUN ;
 int intr ;
 int net_rx (struct net_device*) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_dbg (struct net_local*,int ,struct net_device*,char*,...) ;
 int netif_wake_queue (struct net_device*) ;
 int nubus_readw (scalar_t__) ;
 int swab16 (int ) ;
 int tx_err ;

__attribute__((used)) static irqreturn_t net_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct net_local *lp;
 int ioaddr, status;

 ioaddr = dev->base_addr;
 lp = netdev_priv(dev);
 while ((status = swab16(nubus_readw(dev->base_addr + ISQ_PORT)))) {
  netif_dbg(lp, intr, dev, "status=%04x\n", status);
  switch(status & ISQ_EVENT_MASK) {
  case 131:

   net_rx(dev);
   break;
  case 129:
   dev->stats.tx_packets++;
   netif_wake_queue(dev);
   if ((status & TX_OK) == 0)
    dev->stats.tx_errors++;
   if (status & TX_LOST_CRS)
    dev->stats.tx_carrier_errors++;
   if (status & TX_SQE_ERROR)
    dev->stats.tx_heartbeat_errors++;
   if (status & TX_LATE_COL)
    dev->stats.tx_window_errors++;
   if (status & TX_16_COL)
    dev->stats.tx_aborted_errors++;
   break;
  case 132:
   if (status & READY_FOR_TX) {





    netif_wake_queue(dev);
   }
   if (status & TX_UNDERRUN) {
    netif_dbg(lp, tx_err, dev, "transmit underrun\n");
                                lp->send_underrun++;
                                if (lp->send_underrun == 3) lp->send_cmd = TX_AFTER_381;
                                else if (lp->send_underrun == 6) lp->send_cmd = TX_AFTER_ALL;
                        }
   break;
  case 130:
   dev->stats.rx_missed_errors += (status >> 6);
   break;
  case 128:
   dev->stats.collisions += (status >> 6);
   break;
  }
 }
 return IRQ_HANDLED;
}
