
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pcnet32_private {int lock; TYPE_2__* a; int napi; } ;
struct TYPE_3__ {int rx_errors; int tx_errors; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* read_csr ) (unsigned long,int ) ;int (* write_csr ) (unsigned long,int ,int) ;} ;


 int CSR0 ;
 int CSR3 ;
 int IRQ_HANDLED ;
 int KERN_DEBUG ;
 int __napi_schedule (int *) ;
 int drv ;
 int intr ;
 int max_interrupt_work ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_err (struct pcnet32_private*,int ,struct net_device*,char*,int) ;
 int netif_printk (struct pcnet32_private*,int ,int ,struct net_device*,char*,int,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned long,int ) ;
 int stub2 (unsigned long,int ,int) ;
 int stub3 (unsigned long,int ) ;
 int stub4 (unsigned long,int ) ;
 int stub5 (unsigned long,int ,int) ;
 int stub6 (unsigned long,int ) ;
 int stub7 (unsigned long,int ) ;

__attribute__((used)) static irqreturn_t
pcnet32_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct pcnet32_private *lp;
 unsigned long ioaddr;
 u16 csr0;
 int boguscnt = max_interrupt_work;

 ioaddr = dev->base_addr;
 lp = netdev_priv(dev);

 spin_lock(&lp->lock);

 csr0 = lp->a->read_csr(ioaddr, CSR0);
 while ((csr0 & 0x8f00) && --boguscnt >= 0) {
  if (csr0 == 0xffff)
   break;

  lp->a->write_csr(ioaddr, CSR0, csr0 & ~0x004f);

  netif_printk(lp, intr, KERN_DEBUG, dev,
        "interrupt  csr0=%#2.2x new csr=%#2.2x\n",
        csr0, lp->a->read_csr(ioaddr, CSR0));


  if (csr0 & 0x4000)
   dev->stats.tx_errors++;
  if (csr0 & 0x1000) {
   dev->stats.rx_errors++;
  }
  if (csr0 & 0x0800) {
   netif_err(lp, drv, dev, "Bus master arbitration failure, status %4.4x\n",
      csr0);

  }
  if (napi_schedule_prep(&lp->napi)) {
   u16 val;

   val = lp->a->read_csr(ioaddr, CSR3);
   val |= 0x5f00;
   lp->a->write_csr(ioaddr, CSR3, val);

   __napi_schedule(&lp->napi);
   break;
  }
  csr0 = lp->a->read_csr(ioaddr, CSR0);
 }

 netif_printk(lp, intr, KERN_DEBUG, dev,
       "exiting interrupt, csr0=%#4.4x\n",
       lp->a->read_csr(ioaddr, CSR0));

 spin_unlock(&lp->lock);

 return IRQ_HANDLED;
}
