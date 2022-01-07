
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet_dev {struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int config_flags; struct net_device* priv; int dev; } ;
struct net_device {int * netdev_ops; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 struct pcnet_dev* PRIV (struct net_device*) ;
 struct net_device* __alloc_ei_netdev (int) ;
 int dev_dbg (int *,char*) ;
 int pcnet_config (struct pcmcia_device*) ;
 int pcnet_netdev_ops ;

__attribute__((used)) static int pcnet_probe(struct pcmcia_device *link)
{
    struct pcnet_dev *info;
    struct net_device *dev;

    dev_dbg(&link->dev, "pcnet_attach()\n");


    dev = __alloc_ei_netdev(sizeof(struct pcnet_dev));
    if (!dev) return -ENOMEM;
    info = PRIV(dev);
    info->p_dev = link;
    link->priv = dev;

    link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

    dev->netdev_ops = &pcnet_netdev_ops;

    return pcnet_config(link);
}
