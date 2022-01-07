
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc35815_local {int lock; int napi; } ;
struct net_device {int phydev; int irq; int name; } ;


 int EAGAIN ;
 int IRQF_SHARED ;
 int free_irq (int ,struct net_device*) ;
 int napi_enable (int *) ;
 struct tc35815_local* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tc35815_chip_init (struct net_device*) ;
 int tc35815_chip_reset (struct net_device*) ;
 scalar_t__ tc35815_init_queues (struct net_device*) ;
 int tc35815_interrupt ;

__attribute__((used)) static int
tc35815_open(struct net_device *dev)
{
 struct tc35815_local *lp = netdev_priv(dev);





 if (request_irq(dev->irq, tc35815_interrupt, IRQF_SHARED,
   dev->name, dev))
  return -EAGAIN;

 tc35815_chip_reset(dev);

 if (tc35815_init_queues(dev) != 0) {
  free_irq(dev->irq, dev);
  return -EAGAIN;
 }

 napi_enable(&lp->napi);


 spin_lock_irq(&lp->lock);
 tc35815_chip_init(dev);
 spin_unlock_irq(&lp->lock);

 netif_carrier_off(dev);

 phy_start(dev->phydev);




 netif_start_queue(dev);

 return 0;
}
