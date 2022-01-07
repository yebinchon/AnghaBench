
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int open; int dev; } ;
struct net_device {unsigned int base_addr; int name; } ;
struct el3_private {int media; int window_lock; struct pcmcia_device* p_dev; } ;


 int EL3WINDOW (int ) ;
 scalar_t__ EL3_CMD ;
 int RxDisable ;
 int SetIntrEnb ;
 int StatsDisable ;
 int TxDisable ;
 int del_timer_sync (int *) ;
 int dev_dbg (int *,char*,int ) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outw (int,scalar_t__) ;
 scalar_t__ pcmcia_dev_present (struct pcmcia_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_stats (struct net_device*) ;

__attribute__((used)) static int el3_close(struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;
 struct el3_private *lp = netdev_priv(dev);
 struct pcmcia_device *link = lp->p_dev;

 dev_dbg(&link->dev, "%s: shutting down ethercard.\n", dev->name);

 if (pcmcia_dev_present(link)) {
  unsigned long flags;


  outw(StatsDisable, ioaddr + EL3_CMD);


  outw(RxDisable, ioaddr + EL3_CMD);
  outw(TxDisable, ioaddr + EL3_CMD);


  EL3WINDOW(0);
  spin_lock_irqsave(&lp->window_lock, flags);
  update_stats(dev);
  spin_unlock_irqrestore(&lp->window_lock, flags);


  outw(SetIntrEnb | 0x0000, ioaddr + EL3_CMD);
 }

 link->open--;
 netif_stop_queue(dev);
 del_timer_sync(&lp->media);

 return 0;
}
