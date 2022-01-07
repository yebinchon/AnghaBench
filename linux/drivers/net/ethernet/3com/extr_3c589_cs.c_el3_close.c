
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int open; int dev; } ;
struct net_device {unsigned int base_addr; int if_port; int name; } ;
struct el3_private {int media; struct pcmcia_device* p_dev; } ;


 int EL3WINDOW (int) ;
 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 int RxDisable ;
 int StatsDisable ;
 int StopCoax ;
 int TxDisable ;
 scalar_t__ WN0_IRQ ;
 scalar_t__ WN4_MEDIA ;
 int del_timer_sync (int *) ;
 int dev_dbg (int *,char*,int ) ;
 int inw (scalar_t__) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outw (int,scalar_t__) ;
 scalar_t__ pcmcia_dev_present (struct pcmcia_device*) ;
 int update_stats (struct net_device*) ;

__attribute__((used)) static int el3_close(struct net_device *dev)
{
 struct el3_private *lp = netdev_priv(dev);
 struct pcmcia_device *link = lp->p_dev;
 unsigned int ioaddr = dev->base_addr;

 dev_dbg(&link->dev, "%s: shutting down ethercard.\n", dev->name);

 if (pcmcia_dev_present(link)) {

  outw(StatsDisable, ioaddr + EL3_CMD);


  outw(RxDisable, ioaddr + EL3_CMD);
  outw(TxDisable, ioaddr + EL3_CMD);

  if (dev->if_port == 2)

   outw(StopCoax, ioaddr + EL3_CMD);
  else if (dev->if_port == 1) {

   EL3WINDOW(4);
   outw(0, ioaddr + WN4_MEDIA);
  }


  EL3WINDOW(0);

  outw(0x0f00, ioaddr + WN0_IRQ);


  if ((inw(ioaddr+EL3_STATUS) & 0xe000) == 0x2000)
   update_stats(dev);
 }

 link->open--;
 netif_stop_queue(dev);
 del_timer_sync(&lp->media);

 return 0;
}
