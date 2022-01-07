
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id_mask; int reg_num_mask; int mdio_write; int mdio_read; struct net_device* dev; } ;
struct smc_private {TYPE_1__ mii_if; int lock; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {struct net_device* priv; int dev; } ;
struct net_device {int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;


 int ENOMEM ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int *,char*) ;
 int ethtool_ops ;
 int mdio_read ;
 int mdio_write ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int smc91c92_config (struct pcmcia_device*) ;
 int smc_netdev_ops ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int smc91c92_probe(struct pcmcia_device *link)
{
    struct smc_private *smc;
    struct net_device *dev;

    dev_dbg(&link->dev, "smc91c92_attach()\n");


    dev = alloc_etherdev(sizeof(struct smc_private));
    if (!dev)
 return -ENOMEM;
    smc = netdev_priv(dev);
    smc->p_dev = link;
    link->priv = dev;

    spin_lock_init(&smc->lock);


    dev->netdev_ops = &smc_netdev_ops;
    dev->ethtool_ops = &ethtool_ops;
    dev->watchdog_timeo = TX_TIMEOUT;

    smc->mii_if.dev = dev;
    smc->mii_if.mdio_read = mdio_read;
    smc->mii_if.mdio_write = mdio_write;
    smc->mii_if.phy_id_mask = 0x1f;
    smc->mii_if.reg_num_mask = 0x1f;

    return smc91c92_config(link);
}
