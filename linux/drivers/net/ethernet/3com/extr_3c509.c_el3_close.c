
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; int name; } ;
struct el3_private {scalar_t__ type; } ;


 int EL3WINDOW (int ) ;
 scalar_t__ EL3_EISA ;
 scalar_t__ WN0_IRQ ;
 int el3_debug ;
 int el3_down (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int outw (int,scalar_t__) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int
el3_close(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 struct el3_private *lp = netdev_priv(dev);

 if (el3_debug > 2)
  pr_debug("%s: Shutting down ethercard.\n", dev->name);

 el3_down(dev);

 free_irq(dev->irq, dev);

 EL3WINDOW(0);
 if (lp->type != EL3_EISA) {



  outw(0x0f00, ioaddr + WN0_IRQ);
 }

 return 0;
}
