
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int config_flags; struct net_device* priv; int dev; } ;
struct net_device {int watchdog_timeo; int * netdev_ops; } ;
struct ei_device {int page_lock; } ;
struct axnet_dev {struct pcmcia_device* p_dev; } ;


 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 struct axnet_dev* PRIV (struct net_device*) ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int axnet_config (struct pcmcia_device*) ;
 int axnet_netdev_ops ;
 int dev_dbg (int *,char*) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int axnet_probe(struct pcmcia_device *link)
{
    struct axnet_dev *info;
    struct net_device *dev;
    struct ei_device *ei_local;

    dev_dbg(&link->dev, "axnet_attach()\n");

    dev = alloc_etherdev(sizeof(struct ei_device) + sizeof(struct axnet_dev));
    if (!dev)
 return -ENOMEM;

    ei_local = netdev_priv(dev);
    spin_lock_init(&ei_local->page_lock);

    info = PRIV(dev);
    info->p_dev = link;
    link->priv = dev;
    link->config_flags |= CONF_ENABLE_IRQ;

    dev->netdev_ops = &axnet_netdev_ops;

    dev->watchdog_timeo = TX_TIMEOUT;

    return axnet_config(link);
}
