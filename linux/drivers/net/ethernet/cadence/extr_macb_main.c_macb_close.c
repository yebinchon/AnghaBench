
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {scalar_t__ phydev; } ;
struct macb_queue {int napi; } ;
struct macb {unsigned int num_queues; TYPE_2__* pdev; TYPE_1__* ptp_info; int lock; struct macb_queue* queues; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* ptp_remove ) (struct net_device*) ;} ;


 int macb_free_consistent (struct macb*) ;
 int macb_reset_hw (struct macb*) ;
 int napi_disable (int *) ;
 struct macb* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int pm_runtime_put (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int macb_close(struct net_device *dev)
{
 struct macb *bp = netdev_priv(dev);
 struct macb_queue *queue;
 unsigned long flags;
 unsigned int q;

 netif_tx_stop_all_queues(dev);

 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue)
  napi_disable(&queue->napi);

 if (dev->phydev)
  phy_stop(dev->phydev);

 spin_lock_irqsave(&bp->lock, flags);
 macb_reset_hw(bp);
 netif_carrier_off(dev);
 spin_unlock_irqrestore(&bp->lock, flags);

 macb_free_consistent(bp);

 if (bp->ptp_info)
  bp->ptp_info->ptp_remove(dev);

 pm_runtime_put(&bp->pdev->dev);

 return 0;
}
