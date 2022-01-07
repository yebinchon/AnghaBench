
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tulip_private {TYPE_1__* pdev; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int tulip_free_ring (struct net_device*) ;
 int tulip_init_ring (struct net_device*) ;
 int tulip_interrupt ;
 int tulip_up (struct net_device*) ;

__attribute__((used)) static int
tulip_open(struct net_device *dev)
{
 struct tulip_private *tp = netdev_priv(dev);
 int retval;

 tulip_init_ring (dev);

 retval = request_irq(tp->pdev->irq, tulip_interrupt, IRQF_SHARED,
        dev->name, dev);
 if (retval)
  goto free_ring;

 tulip_up (dev);

 netif_start_queue (dev);

 return 0;

free_ring:
 tulip_free_ring (dev);
 return retval;
}
