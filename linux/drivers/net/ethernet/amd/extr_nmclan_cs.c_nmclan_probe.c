
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcmcia_device {int config_index; int config_regs; int config_flags; TYPE_1__** resource; struct net_device* priv; int dev; } ;
struct net_device {int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_5__ {int tx_free_frames; int bank_lock; struct pcmcia_device* p_dev; } ;
typedef TYPE_2__ mace_private ;
struct TYPE_4__ {int end; int flags; } ;


 int AM2150_MAX_TX_FRAMES ;
 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int PRESENT_OPTION ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int *,char*) ;
 int mace_netdev_ops ;
 int netdev_ethtool_ops ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int nmclan_config (struct pcmcia_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nmclan_probe(struct pcmcia_device *link)
{
    mace_private *lp;
    struct net_device *dev;

    dev_dbg(&link->dev, "nmclan_attach()\n");


    dev = alloc_etherdev(sizeof(mace_private));
    if (!dev)
     return -ENOMEM;
    lp = netdev_priv(dev);
    lp->p_dev = link;
    link->priv = dev;

    spin_lock_init(&lp->bank_lock);
    link->resource[0]->end = 32;
    link->resource[0]->flags |= IO_DATA_PATH_WIDTH_AUTO;
    link->config_flags |= CONF_ENABLE_IRQ;
    link->config_index = 1;
    link->config_regs = PRESENT_OPTION;

    lp->tx_free_frames=AM2150_MAX_TX_FRAMES;

    dev->netdev_ops = &mace_netdev_ops;
    dev->ethtool_ops = &netdev_ethtool_ops;
    dev->watchdog_timeo = TX_TIMEOUT;

    return nmclan_config(link);
}
