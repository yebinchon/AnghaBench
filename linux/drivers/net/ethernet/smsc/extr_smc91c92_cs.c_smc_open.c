
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_private {int media; scalar_t__ packets_waiting; int * saved_skb; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int open; int dev; } ;
struct net_device {scalar_t__ base_addr; int name; } ;


 scalar_t__ BANK_SELECT ;
 int ENODEV ;
 scalar_t__ HZ ;
 scalar_t__ check_sig (struct pcmcia_device*) ;
 int dev_dbg (int *,char*,int ,struct net_device*,int ) ;
 int inw (scalar_t__) ;
 scalar_t__ jiffies ;
 int media_check ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_info (struct net_device*,char*) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int smc_dump (struct net_device*) ;
 int smc_reset (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int smc_open(struct net_device *dev)
{
    struct smc_private *smc = netdev_priv(dev);
    struct pcmcia_device *link = smc->p_dev;

    dev_dbg(&link->dev, "%s: smc_open(%p), ID/Window %4.4x.\n",
   dev->name, dev, inw(dev->base_addr + BANK_SELECT));





    if (!pcmcia_dev_present(link))
 return -ENODEV;

    if (check_sig(link) < 0) {
 netdev_info(dev, "Yikes!  Bad chip signature!\n");
 return -ENODEV;
    }
    link->open++;

    netif_start_queue(dev);
    smc->saved_skb = ((void*)0);
    smc->packets_waiting = 0;

    smc_reset(dev);
    timer_setup(&smc->media, media_check, 0);
    mod_timer(&smc->media, jiffies + HZ);

    return 0;
}
