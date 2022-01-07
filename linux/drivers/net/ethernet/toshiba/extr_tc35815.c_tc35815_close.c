
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc35815_local {int restart_work; int napi; } ;
struct net_device {int irq; scalar_t__ phydev; } ;


 int cancel_work_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct tc35815_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int tc35815_chip_reset (struct net_device*) ;
 int tc35815_free_queues (struct net_device*) ;

__attribute__((used)) static int
tc35815_close(struct net_device *dev)
{
 struct tc35815_local *lp = netdev_priv(dev);

 netif_stop_queue(dev);
 napi_disable(&lp->napi);
 if (dev->phydev)
  phy_stop(dev->phydev);
 cancel_work_sync(&lp->restart_work);


 tc35815_chip_reset(dev);
 free_irq(dev->irq, dev);

 tc35815_free_queues(dev);

 return 0;

}
