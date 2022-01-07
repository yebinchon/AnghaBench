
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; } ;
struct netdev_private {TYPE_2__ timer; TYPE_1__* pdev; } ;
struct net_device {int name; } ;
struct TYPE_4__ {int irq; } ;


 int HZ ;
 int IRQF_SHARED ;
 int add_timer (TYPE_2__*) ;
 int alloc_list (struct net_device*) ;
 int dl2k_enable_int (struct netdev_private*) ;
 int free_list (struct net_device*) ;
 scalar_t__ jiffies ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int const,int ,int ,int ,struct net_device*) ;
 int rio_hw_init (struct net_device*) ;
 int rio_hw_stop (struct net_device*) ;
 int rio_interrupt ;
 int rio_timer ;
 int timer_setup (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int rio_open(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 const int irq = np->pdev->irq;
 int i;

 i = alloc_list(dev);
 if (i)
  return i;

 rio_hw_init(dev);

 i = request_irq(irq, rio_interrupt, IRQF_SHARED, dev->name, dev);
 if (i) {
  rio_hw_stop(dev);
  free_list(dev);
  return i;
 }

 timer_setup(&np->timer, rio_timer, 0);
 np->timer.expires = jiffies + 1 * HZ;
 add_timer(&np->timer);

 netif_start_queue (dev);

 dl2k_enable_int(np);
 return 0;
}
