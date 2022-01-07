
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct lance_regs {int rdp; int rap; } ;
struct lance_private {struct lance_regs* ll; } ;


 int IRQF_SHARED ;
 int IRQ_AMIGA_PORTS ;
 int LE_C0_STOP ;
 int LE_CSR0 ;
 int init_restart_lance (struct lance_private*) ;
 int lance_init_ring (struct net_device*) ;
 int lance_interrupt ;
 int load_csrs (struct lance_private*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int lance_open(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;
 int ret;


 ll->rap = LE_CSR0;
 ll->rdp = LE_C0_STOP;


 ret = request_irq(IRQ_AMIGA_PORTS, lance_interrupt, IRQF_SHARED,
     dev->name, dev);
 if (ret)
  return ret;

 load_csrs(lp);
 lance_init_ring(dev);

 netif_start_queue(dev);

 return init_restart_lance(lp);
}
