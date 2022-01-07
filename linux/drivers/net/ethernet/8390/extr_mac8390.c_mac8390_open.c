
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int name; } ;


 int __ei_interrupt ;
 int __ei_open (struct net_device*) ;
 int pr_err (char*,int ,int ) ;
 int request_irq (int ,int ,int ,char*,struct net_device*) ;

__attribute__((used)) static int mac8390_open(struct net_device *dev)
{
 int err;

 __ei_open(dev);
 err = request_irq(dev->irq, __ei_interrupt, 0, "8390 Ethernet", dev);
 if (err)
  pr_err("%s: unable to get IRQ %d\n", dev->name, dev->irq);
 return err;
}
