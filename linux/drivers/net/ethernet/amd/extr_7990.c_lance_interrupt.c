
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_errors; int tx_errors; } ;
struct net_device {int name; TYPE_1__ stats; } ;
struct lance_private {int devlock; scalar_t__ tx_full; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LE_C0_BABL ;
 int LE_C0_CERR ;
 int LE_C0_ERR ;
 int LE_C0_IDON ;
 int LE_C0_INEA ;
 int LE_C0_INIT ;
 int LE_C0_INTR ;
 int LE_C0_MERR ;
 int LE_C0_MISS ;
 int LE_C0_RINT ;
 int LE_C0_STOP ;
 int LE_C0_STRT ;
 int LE_C0_TDMD ;
 int LE_C0_TINT ;
 int LE_CSR0 ;
 int PRINT_RINGS () ;
 int READRDP (struct lance_private*) ;
 scalar_t__ TX_BUFFS_AVAIL ;
 int WRITERAP (struct lance_private*,int ) ;
 int WRITERDP (struct lance_private*,int) ;
 int lance_rx (struct net_device*) ;
 int lance_tx (struct net_device*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
lance_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct lance_private *lp = netdev_priv(dev);
 int csr0;

 spin_lock(&lp->devlock);

 WRITERAP(lp, LE_CSR0);
 csr0 = READRDP(lp);

 PRINT_RINGS();

 if (!(csr0 & LE_C0_INTR)) {
  spin_unlock(&lp->devlock);
  return IRQ_NONE;
 }


 WRITERDP(lp, csr0 & ~(LE_C0_INEA|LE_C0_TDMD|LE_C0_STOP|LE_C0_STRT|LE_C0_INIT));

 if ((csr0 & LE_C0_ERR)) {

  WRITERDP(lp, LE_C0_BABL|LE_C0_ERR|LE_C0_MISS|LE_C0_INEA);
 }

 if (csr0 & LE_C0_RINT)
  lance_rx(dev);

 if (csr0 & LE_C0_TINT)
  lance_tx(dev);


 if (csr0 & LE_C0_BABL)
  dev->stats.tx_errors++;
 if (csr0 & LE_C0_MISS)
  dev->stats.rx_errors++;
 if (csr0 & LE_C0_MERR) {
  printk("%s: Bus master arbitration failure, status %4.4x.\n",
         dev->name, csr0);

  WRITERDP(lp, LE_C0_STRT);
 }

 if (lp->tx_full && netif_queue_stopped(dev) && (TX_BUFFS_AVAIL >= 0)) {
  lp->tx_full = 0;
  netif_wake_queue(dev);
 }

 WRITERAP(lp, LE_CSR0);
 WRITERDP(lp, LE_C0_BABL|LE_C0_CERR|LE_C0_MISS|LE_C0_MERR|LE_C0_IDON|LE_C0_INEA);

 spin_unlock(&lp->devlock);
 return IRQ_HANDLED;
}
