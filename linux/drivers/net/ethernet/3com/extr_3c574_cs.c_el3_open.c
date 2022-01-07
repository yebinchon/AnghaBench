
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int dev; int open; } ;
struct net_device {scalar_t__ base_addr; int name; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct el3_private {TYPE_1__ media; struct pcmcia_device* p_dev; } ;


 scalar_t__ EL3_STATUS ;
 int ENODEV ;
 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int inw (scalar_t__) ;
 scalar_t__ jiffies ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int tc574_reset (struct net_device*) ;

__attribute__((used)) static int el3_open(struct net_device *dev)
{
 struct el3_private *lp = netdev_priv(dev);
 struct pcmcia_device *link = lp->p_dev;

 if (!pcmcia_dev_present(link))
  return -ENODEV;

 link->open++;
 netif_start_queue(dev);

 tc574_reset(dev);
 lp->media.expires = jiffies + HZ;
 add_timer(&lp->media);

 dev_dbg(&link->dev, "%s: opened, status %4.4x.\n",
    dev->name, inw(dev->base_addr + EL3_STATUS));

 return 0;
}
