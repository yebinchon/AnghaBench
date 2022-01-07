
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; int open; } ;
struct net_device {scalar_t__ base_addr; int name; } ;
struct el3_private {int media; struct pcmcia_device* p_dev; } ;


 scalar_t__ EL3_STATUS ;
 int ENODEV ;
 scalar_t__ HZ ;
 int dev_dbg (int *,char*,int ,int ) ;
 int inw (scalar_t__) ;
 scalar_t__ jiffies ;
 int media_check ;
 int mod_timer (int *,scalar_t__) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int tc589_reset (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int el3_open(struct net_device *dev)
{
 struct el3_private *lp = netdev_priv(dev);
 struct pcmcia_device *link = lp->p_dev;

 if (!pcmcia_dev_present(link))
  return -ENODEV;

 link->open++;
 netif_start_queue(dev);

 tc589_reset(dev);
 timer_setup(&lp->media, media_check, 0);
 mod_timer(&lp->media, jiffies + HZ);

 dev_dbg(&link->dev, "%s: opened, status %4.4x.\n",
   dev->name, inw(dev->base_addr + EL3_STATUS));

 return 0;
}
