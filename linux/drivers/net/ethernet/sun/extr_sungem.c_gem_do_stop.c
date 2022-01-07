
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gem {TYPE_1__* pdev; scalar_t__ reset_task_pending; int link_timer; } ;
struct TYPE_2__ {int irq; } ;


 int del_timer_sync (int *) ;
 int free_irq (int ,void*) ;
 int gem_clean_rings (struct gem*) ;
 int gem_disable_ints (struct gem*) ;
 int gem_netif_stop (struct gem*) ;
 int gem_put_cell (struct gem*) ;
 int gem_reset (struct gem*) ;
 int gem_stop_dma (struct gem*) ;
 int gem_stop_phy (struct gem*,int) ;
 int msleep (int) ;
 struct gem* netdev_priv (struct net_device*) ;
 int pci_disable_device (TYPE_1__*) ;

__attribute__((used)) static void gem_do_stop(struct net_device *dev, int wol)
{
 struct gem *gp = netdev_priv(dev);


 gem_netif_stop(gp);






 gem_disable_ints(gp);


 del_timer_sync(&gp->link_timer);
 gp->reset_task_pending = 0;


 gem_stop_dma(gp);
 msleep(10);
 if (!wol)
  gem_reset(gp);
 msleep(10);


 gem_clean_rings(gp);


 free_irq(gp->pdev->irq, (void *) dev);


 gem_stop_phy(gp, wol);


 pci_disable_device(gp->pdev);


 if (!wol)
  gem_put_cell(gp);
}
