
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct lance_regs {int rdp; void* rap; } ;
struct lance_private {struct lance_regs* ll; } ;
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
 void* LE_CSR0 ;
 int lance_rx (struct net_device*) ;
 int lance_tx (struct net_device*) ;
 scalar_t__ lance_tx_buffs_avail (struct lance_private*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static irqreturn_t lance_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;
 int csr0;

 ll->rap = LE_CSR0;
 csr0 = ll->rdp;

 if (!(csr0 & LE_C0_INTR))
  return IRQ_NONE;


 ll->rdp = csr0 & ~(LE_C0_INEA | LE_C0_TDMD | LE_C0_STOP | LE_C0_STRT |
      LE_C0_INIT);

 if (csr0 & LE_C0_ERR) {

  ll->rdp = LE_C0_BABL | LE_C0_ERR | LE_C0_MISS | LE_C0_INEA;
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
  netdev_err(dev, "Bus master arbitration failure, status %04x\n",
      csr0);

  ll->rdp = LE_C0_STRT;
 }

 if (netif_queue_stopped(dev) && lance_tx_buffs_avail(lp) > 0)
  netif_wake_queue(dev);

 ll->rap = LE_CSR0;
 ll->rdp = (LE_C0_BABL | LE_C0_CERR | LE_C0_MISS | LE_C0_MERR |
     LE_C0_IDON | LE_C0_INEA);
 return IRQ_HANDLED;
}
