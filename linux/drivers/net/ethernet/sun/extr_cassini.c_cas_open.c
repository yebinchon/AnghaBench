
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct cas {int hw_running; int opened; int pm_mutex; int napi; int dev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 scalar_t__ cas_alloc_rxds (struct cas*) ;
 int cas_clean_rings (struct cas*) ;
 int cas_free_rxds (struct cas*) ;
 int cas_init_hw (struct cas*,int) ;
 int cas_interrupt ;
 int cas_lock_all_save (struct cas*,unsigned long) ;
 int cas_reset (struct cas*,int ) ;
 int cas_spare_free (struct cas*) ;
 int cas_spare_init (struct cas*) ;
 int cas_spare_recover (struct cas*,int ) ;
 scalar_t__ cas_tx_tiny_alloc (struct cas*) ;
 int cas_tx_tiny_free (struct cas*) ;
 int cas_unlock_all_restore (struct cas*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_enable (int *) ;
 int netdev_err (int ,char*) ;
 struct cas* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int ,int ,void*) ;

__attribute__((used)) static int cas_open(struct net_device *dev)
{
 struct cas *cp = netdev_priv(dev);
 int hw_was_up, err;
 unsigned long flags;

 mutex_lock(&cp->pm_mutex);

 hw_was_up = cp->hw_running;




 if (!cp->hw_running) {

  cas_lock_all_save(cp, flags);





  cas_reset(cp, 0);
  cp->hw_running = 1;
  cas_unlock_all_restore(cp, flags);
 }

 err = -ENOMEM;
 if (cas_tx_tiny_alloc(cp) < 0)
  goto err_unlock;


 if (cas_alloc_rxds(cp) < 0)
  goto err_tx_tiny;


 cas_spare_init(cp);
 cas_spare_recover(cp, GFP_KERNEL);






 if (request_irq(cp->pdev->irq, cas_interrupt,
   IRQF_SHARED, dev->name, (void *) dev)) {
  netdev_err(cp->dev, "failed to request irq !\n");
  err = -EAGAIN;
  goto err_spare;
 }





 cas_lock_all_save(cp, flags);
 cas_clean_rings(cp);
 cas_init_hw(cp, !hw_was_up);
 cp->opened = 1;
 cas_unlock_all_restore(cp, flags);

 netif_start_queue(dev);
 mutex_unlock(&cp->pm_mutex);
 return 0;

err_spare:
 cas_spare_free(cp);
 cas_free_rxds(cp);
err_tx_tiny:
 cas_tx_tiny_free(cp);
err_unlock:
 mutex_unlock(&cp->pm_mutex);
 return err;
}
