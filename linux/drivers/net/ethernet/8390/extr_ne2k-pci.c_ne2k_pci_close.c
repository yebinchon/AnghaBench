
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int ei_close (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;

__attribute__((used)) static int ne2k_pci_close(struct net_device *dev)
{
 ei_close(dev);
 free_irq(dev->irq, dev);
 return 0;
}
