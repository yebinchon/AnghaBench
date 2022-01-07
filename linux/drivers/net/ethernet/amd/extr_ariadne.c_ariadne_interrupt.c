
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx_errors; int tx_errors; int tx_packets; int collisions; int tx_fifo_errors; int tx_window_errors; int tx_carrier_errors; int tx_aborted_errors; } ;
struct net_device {TYPE_2__ stats; scalar_t__ base_addr; } ;
struct ariadne_private {int dirty_tx; int cur_tx; int tx_full; TYPE_1__** tx_ring; } ;
struct Am79C960 {int RAP; int RDP; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int TMD1; int TMD3; } ;


 int BABL ;
 int CERR ;
 void* CSR0 ;
 int EF_LCAR ;
 int EF_LCOL ;
 int EF_RTRY ;
 int EF_UFLO ;
 int ERR ;
 int IDON ;
 int INEA ;
 int INIT ;
 int INTR ;
 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int MERR ;
 int MISS ;
 int RINT ;
 int RXON ;
 int STOP ;
 int STRT ;
 int TDMD ;
 int TF_ERR ;
 int TF_MORE ;
 int TF_ONE ;
 int TF_OWN ;
 int TINT ;
 int TXON ;
 int TX_RING_SIZE ;
 int ariadne_debug ;
 int ariadne_rx (struct net_device*) ;
 int lowb (int) ;
 int netdev_dbg (struct net_device*,char*,int,int) ;
 int netdev_err (struct net_device*,char*,int,...) ;
 struct ariadne_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_cont (char*) ;

__attribute__((used)) static irqreturn_t ariadne_interrupt(int irq, void *data)
{
 struct net_device *dev = (struct net_device *)data;
 volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;
 struct ariadne_private *priv;
 int csr0, boguscnt;
 int handled = 0;

 lance->RAP = CSR0;

 if (!(lance->RDP & INTR))
  return IRQ_NONE;

 priv = netdev_priv(dev);

 boguscnt = 10;
 while ((csr0 = lance->RDP) & (ERR | RINT | TINT) && --boguscnt >= 0) {

  lance->RDP = csr0 & ~(INEA | TDMD | STOP | STRT | INIT);
  if (csr0 & RINT) {
   handled = 1;
   ariadne_rx(dev);
  }

  if (csr0 & TINT) {
   int dirty_tx = priv->dirty_tx;

   handled = 1;
   while (dirty_tx < priv->cur_tx) {
    int entry = dirty_tx % TX_RING_SIZE;
    int status = lowb(priv->tx_ring[entry]->TMD1);

    if (status & TF_OWN)
     break;

    priv->tx_ring[entry]->TMD1 &= 0xff00;

    if (status & TF_ERR) {

     int err_status = priv->tx_ring[entry]->TMD3;
     dev->stats.tx_errors++;
     if (err_status & EF_RTRY)
      dev->stats.tx_aborted_errors++;
     if (err_status & EF_LCAR)
      dev->stats.tx_carrier_errors++;
     if (err_status & EF_LCOL)
      dev->stats.tx_window_errors++;
     if (err_status & EF_UFLO) {

      dev->stats.tx_fifo_errors++;

      netdev_err(dev, "Tx FIFO error! Status %04x\n",
          csr0);

      lance->RDP = STRT;
     }
    } else {
     if (status & (TF_MORE | TF_ONE))
      dev->stats.collisions++;
     dev->stats.tx_packets++;
    }
    dirty_tx++;
   }


   if (priv->cur_tx - dirty_tx >= TX_RING_SIZE) {
    netdev_err(dev, "out-of-sync dirty pointer, %d vs. %d, full=%d\n",
        dirty_tx, priv->cur_tx,
        priv->tx_full);
    dirty_tx += TX_RING_SIZE;
   }


   if (priv->tx_full && netif_queue_stopped(dev) &&
       dirty_tx > priv->cur_tx - TX_RING_SIZE + 2) {

    priv->tx_full = 0;
    netif_wake_queue(dev);
   }

   priv->dirty_tx = dirty_tx;
  }


  if (csr0 & BABL) {
   handled = 1;
   dev->stats.tx_errors++;
  }
  if (csr0 & MISS) {
   handled = 1;
   dev->stats.rx_errors++;
  }
  if (csr0 & MERR) {
   handled = 1;
   netdev_err(dev, "Bus master arbitration failure, status %04x\n",
       csr0);

   lance->RDP = STRT;
  }
 }


 lance->RAP = CSR0;
 lance->RDP = INEA | BABL | CERR | MISS | MERR | IDON;

 if (ariadne_debug > 4)
  netdev_dbg(dev, "exiting interrupt, csr%d=%#04x\n",
      lance->RAP, lance->RDP);

 return IRQ_RETVAL(handled);
}
