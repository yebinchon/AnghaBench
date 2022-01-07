
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_flags; TYPE_1__** resource; struct net_device* priv; int dev; } ;
struct net_device {int * ethtool_ops; int watchdog_timeo; int * netdev_ops; } ;
struct local_info {int * base; struct pcmcia_device* p_dev; } ;
struct TYPE_2__ {int end; int flags; } ;


 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int *,char*) ;
 int fjn_netdev_ops ;
 int fmvj18x_config (struct pcmcia_device*) ;
 int netdev_ethtool_ops ;
 struct local_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fmvj18x_probe(struct pcmcia_device *link)
{
    struct local_info *lp;
    struct net_device *dev;

    dev_dbg(&link->dev, "fmvj18x_attach()\n");


    dev = alloc_etherdev(sizeof(struct local_info));
    if (!dev)
 return -ENOMEM;
    lp = netdev_priv(dev);
    link->priv = dev;
    lp->p_dev = link;
    lp->base = ((void*)0);


    link->resource[0]->end = 32;
    link->resource[0]->flags |= IO_DATA_PATH_WIDTH_AUTO;


    link->config_flags |= CONF_ENABLE_IRQ;

    dev->netdev_ops = &fjn_netdev_ops;
    dev->watchdog_timeo = TX_TIMEOUT;

    dev->ethtool_ops = &netdev_ethtool_ops;

    return fmvj18x_config(link);
}
