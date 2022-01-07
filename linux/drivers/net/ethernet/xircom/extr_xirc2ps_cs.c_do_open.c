
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int open; int dev; } ;
struct net_device {int dummy; } ;
struct local_info {struct pcmcia_device* p_dev; } ;


 int ENODEV ;
 int dev_dbg (int *,char*,struct net_device*) ;
 int do_reset (struct net_device*,int) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;

__attribute__((used)) static int
do_open(struct net_device *dev)
{
    struct local_info *lp = netdev_priv(dev);
    struct pcmcia_device *link = lp->p_dev;

    dev_dbg(&link->dev, "do_open(%p)\n", dev);



    if (!pcmcia_dev_present(link))
 return -ENODEV;


    link->open++;

    netif_start_queue(dev);
    do_reset(dev,1);

    return 0;
}
