
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct pcnet32_private {scalar_t__ chip_version; int lock; struct pcnet32_access* a; } ;
struct pcnet32_access {int (* read_csr ) (int ,int ) ;int (* write_csr ) (int ,int ,int) ;} ;
struct net_device {int base_addr; } ;


 int CSR5 ;
 int CSR5_SUSPEND ;
 int KERN_DEBUG ;
 scalar_t__ PCNET32_79C970A ;
 int hw ;
 int mdelay (int) ;
 int msleep (int) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_printk (struct pcnet32_private*,int ,int ,struct net_device*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static int pcnet32_suspend(struct net_device *dev, unsigned long *flags,
      int can_sleep)
{
 int csr5;
 struct pcnet32_private *lp = netdev_priv(dev);
 const struct pcnet32_access *a = lp->a;
 ulong ioaddr = dev->base_addr;
 int ticks;


 if (lp->chip_version < PCNET32_79C970A)
  return 0;


 csr5 = a->read_csr(ioaddr, CSR5);
 a->write_csr(ioaddr, CSR5, csr5 | CSR5_SUSPEND);


 ticks = 0;
 while (!(a->read_csr(ioaddr, CSR5) & CSR5_SUSPEND)) {
  spin_unlock_irqrestore(&lp->lock, *flags);
  if (can_sleep)
   msleep(1);
  else
   mdelay(1);
  spin_lock_irqsave(&lp->lock, *flags);
  ticks++;
  if (ticks > 200) {
   netif_printk(lp, hw, KERN_DEBUG, dev,
         "Error getting into suspend!\n");
   return 0;
  }
 }
 return 1;
}
