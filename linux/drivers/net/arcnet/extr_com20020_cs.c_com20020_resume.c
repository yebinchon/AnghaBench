
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct com20020_dev* priv; } ;
struct net_device {int base_addr; } ;
struct com20020_dev {struct net_device* dev; } ;
struct arcnet_local {int config; } ;


 int COM20020_REG_W_CONFIG ;
 int arcnet_outb (int,int,int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static int com20020_resume(struct pcmcia_device *link)
{
 struct com20020_dev *info = link->priv;
 struct net_device *dev = info->dev;

 if (link->open) {
  int ioaddr = dev->base_addr;
  struct arcnet_local *lp = netdev_priv(dev);

  arcnet_outb(lp->config | 0x80, ioaddr, COM20020_REG_W_CONFIG);
  udelay(5);
  arcnet_outb(lp->config, ioaddr, COM20020_REG_W_CONFIG);
 }

 return 0;
}
