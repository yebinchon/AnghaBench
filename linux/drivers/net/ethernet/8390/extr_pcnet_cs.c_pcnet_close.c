
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet_dev {int watchdog; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int open; int dev; } ;
struct net_device {int irq; int name; } ;


 struct pcnet_dev* PRIV (struct net_device*) ;
 int del_timer_sync (int *) ;
 int dev_dbg (int *,char*,int ) ;
 int ei_close (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int pcnet_close(struct net_device *dev)
{
    struct pcnet_dev *info = PRIV(dev);
    struct pcmcia_device *link = info->p_dev;

    dev_dbg(&link->dev, "pcnet_close('%s')\n", dev->name);

    ei_close(dev);
    free_irq(dev->irq, dev);

    link->open--;
    netif_stop_queue(dev);
    del_timer_sync(&info->watchdog);

    return 0;
}
