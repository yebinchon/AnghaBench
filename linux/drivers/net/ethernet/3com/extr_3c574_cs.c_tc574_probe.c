
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_index; int config_flags; TYPE_1__** resource; struct net_device* priv; int dev; } ;
struct net_device {int watchdog_timeo; int * netdev_ops; } ;
struct el3_private {int window_lock; struct pcmcia_device* p_dev; } ;
struct TYPE_2__ {int end; int flags; } ;


 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int IO_DATA_PATH_WIDTH_16 ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int *,char*) ;
 int el3_netdev_ops ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;
 int tc574_config (struct pcmcia_device*) ;

__attribute__((used)) static int tc574_probe(struct pcmcia_device *link)
{
 struct el3_private *lp;
 struct net_device *dev;

 dev_dbg(&link->dev, "3c574_attach()\n");


 dev = alloc_etherdev(sizeof(struct el3_private));
 if (!dev)
  return -ENOMEM;
 lp = netdev_priv(dev);
 link->priv = dev;
 lp->p_dev = link;

 spin_lock_init(&lp->window_lock);
 link->resource[0]->end = 32;
 link->resource[0]->flags |= IO_DATA_PATH_WIDTH_16;
 link->config_flags |= CONF_ENABLE_IRQ;
 link->config_index = 1;

 dev->netdev_ops = &el3_netdev_ops;
 dev->watchdog_timeo = TX_TIMEOUT;

 return tc574_config(link);
}
