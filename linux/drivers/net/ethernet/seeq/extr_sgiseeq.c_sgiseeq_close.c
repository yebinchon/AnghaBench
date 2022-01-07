
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {int hregs; struct sgiseeq_regs* sregs; } ;
struct net_device {unsigned int irq; } ;


 int free_irq (unsigned int,struct net_device*) ;
 struct sgiseeq_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int reset_hpc3_and_seeq (int ,struct sgiseeq_regs*) ;
 int seeq_purge_ring (struct net_device*) ;

__attribute__((used)) static int sgiseeq_close(struct net_device *dev)
{
 struct sgiseeq_private *sp = netdev_priv(dev);
 struct sgiseeq_regs *sregs = sp->sregs;
 unsigned int irq = dev->irq;

 netif_stop_queue(dev);


 reset_hpc3_and_seeq(sp->hregs, sregs);
 free_irq(irq, dev);
 seeq_purge_ring(dev);

 return 0;
}
