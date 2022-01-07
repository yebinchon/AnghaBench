
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; scalar_t__ irq; } ;


 int COPS_IO_EXTENT ;
 int free_irq (scalar_t__,struct net_device*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void cleanup_card(struct net_device *dev)
{
 if (dev->irq)
  free_irq(dev->irq, dev);
 release_region(dev->base_addr, COPS_IO_EXTENT);
}
