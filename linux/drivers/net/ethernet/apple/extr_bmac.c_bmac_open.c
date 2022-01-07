
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct bmac_data {int opened; } ;


 int bmac_reset_and_enable (struct net_device*) ;
 int enable_irq (int ) ;
 struct bmac_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bmac_open(struct net_device *dev)
{
 struct bmac_data *bp = netdev_priv(dev);


 bp->opened = 1;
 bmac_reset_and_enable(dev);
 enable_irq(dev->irq);
 return 0;
}
