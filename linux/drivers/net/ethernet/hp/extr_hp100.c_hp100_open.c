
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; int name; } ;
struct hp100_private {scalar_t__ bus; int hash_bytes; int mac2_mode; int mac1_mode; int lan_type; } ;


 int EAGAIN ;
 scalar_t__ HP100_BUS_EISA ;
 scalar_t__ HP100_BUS_PCI ;
 int HP100_MAC1MODE3 ;
 int HP100_MAC2MODE3 ;
 int IRQF_SHARED ;
 int TRACE ;
 int hp100_hwinit (struct net_device*) ;
 int hp100_interrupt ;
 int hp100_outw (int,int ) ;
 int hp100_sense_lan (struct net_device*) ;
 int hp100_start_interface (struct net_device*) ;
 int hp100_stop_interface (struct net_device*) ;
 int memset (int *,int,int) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int printk (char*,int ,...) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int hp100_open(struct net_device *dev)
{
 struct hp100_private *lp = netdev_priv(dev);
 if (request_irq(dev->irq, hp100_interrupt,
   lp->bus == HP100_BUS_PCI || lp->bus ==
   HP100_BUS_EISA ? IRQF_SHARED : 0,
   dev->name, dev)) {
  printk("hp100: %s: unable to get IRQ %d\n", dev->name, dev->irq);
  return -EAGAIN;
 }

 netif_trans_update(dev);
 netif_start_queue(dev);

 lp->lan_type = hp100_sense_lan(dev);
 lp->mac1_mode = HP100_MAC1MODE3;
 lp->mac2_mode = HP100_MAC2MODE3;
 memset(&lp->hash_bytes, 0x00, 8);

 hp100_stop_interface(dev);

 hp100_hwinit(dev);

 hp100_start_interface(dev);

 return 0;
}
