
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int name; int irq; } ;
struct hp100_private {scalar_t__ lan_type; int hub_status; } ;


 scalar_t__ HP100_LAN_100 ;
 int IRQ_MASK ;
 int OPTION_LSW ;
 int PERFORMANCE ;
 int TRACE ;
 int free_irq (int ,struct net_device*) ;
 int hp100_inw (int ) ;
 int hp100_login_to_vg_hub (struct net_device*,int ) ;
 int hp100_outw (int,int ) ;
 int hp100_page (int ) ;
 int hp100_stop_interface (struct net_device*) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int hp100_close(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 struct hp100_private *lp = netdev_priv(dev);






 hp100_page(PERFORMANCE);
 hp100_outw(0xfefe, IRQ_MASK);

 hp100_stop_interface(dev);

 if (lp->lan_type == HP100_LAN_100)
  lp->hub_status = hp100_login_to_vg_hub(dev, 0);

 netif_stop_queue(dev);

 free_irq(dev->irq, dev);






 return 0;
}
