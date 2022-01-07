
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int config_index; struct net_device* priv; int dev; } ;
struct net_device {int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;
struct local_info {int tx_timeout_task; struct pcmcia_device* p_dev; struct net_device* dev; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int *,char*) ;
 int netdev_ethtool_ops ;
 int netdev_ops ;
 struct local_info* netdev_priv (struct net_device*) ;
 int xirc2ps_config (struct pcmcia_device*) ;
 int xirc2ps_tx_timeout_task ;

__attribute__((used)) static int
xirc2ps_probe(struct pcmcia_device *link)
{
    struct net_device *dev;
    struct local_info *local;

    dev_dbg(&link->dev, "attach()\n");


    dev = alloc_etherdev(sizeof(struct local_info));
    if (!dev)
     return -ENOMEM;
    local = netdev_priv(dev);
    local->dev = dev;
    local->p_dev = link;
    link->priv = dev;


    link->config_index = 1;


    dev->netdev_ops = &netdev_ops;
    dev->ethtool_ops = &netdev_ethtool_ops;
    dev->watchdog_timeo = TX_TIMEOUT;
    INIT_WORK(&local->tx_timeout_task, xirc2ps_tx_timeout_task);

    return xirc2ps_config(link);
}
