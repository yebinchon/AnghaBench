
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int __ei_close (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;

__attribute__((used)) static int mac8390_close(struct net_device *dev)
{
 free_irq(dev->irq, dev);
 __ei_close(dev);
 return 0;
}
