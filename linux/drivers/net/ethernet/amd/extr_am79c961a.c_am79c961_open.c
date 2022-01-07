
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; int irq; } ;
struct TYPE_2__ {int expires; } ;
struct dev_priv {TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 int am79c961_init_for_open (struct net_device*) ;
 int am79c961_interrupt ;
 int jiffies ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int
am79c961_open(struct net_device *dev)
{
 struct dev_priv *priv = netdev_priv(dev);
 int ret;

 ret = request_irq(dev->irq, am79c961_interrupt, 0, dev->name, dev);
 if (ret)
  return ret;

 am79c961_init_for_open(dev);

 netif_carrier_off(dev);

 priv->timer.expires = jiffies;
 add_timer(&priv->timer);

 netif_start_queue(dev);

 return 0;
}
