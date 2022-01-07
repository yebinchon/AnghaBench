
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int flags; } ;
struct arcnet_local {int setup; } ;


 int COM20020_REG_W_XREG ;
 int D_NORMAL ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int PROMISCset ;
 int SUB_SETUP1 ;
 int arc_printk (int ,struct net_device*,char*) ;
 int arcnet_outb (int,int,int ) ;
 int com20020_set_subaddress (struct arcnet_local*,int,int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void com20020_set_mc_list(struct net_device *dev)
{
 struct arcnet_local *lp = netdev_priv(dev);
 int ioaddr = dev->base_addr;

 if ((dev->flags & IFF_PROMISC) && (dev->flags & IFF_UP)) {

  if (!(lp->setup & PROMISCset))
   arc_printk(D_NORMAL, dev, "Setting promiscuous flag...\n");
  com20020_set_subaddress(lp, ioaddr, SUB_SETUP1);
  lp->setup |= PROMISCset;
  arcnet_outb(lp->setup, ioaddr, COM20020_REG_W_XREG);
 } else {

  if ((lp->setup & PROMISCset))
   arc_printk(D_NORMAL, dev, "Resetting promiscuous flag...\n");
  com20020_set_subaddress(lp, ioaddr, SUB_SETUP1);
  lp->setup &= ~PROMISCset;
  arcnet_outb(lp->setup, ioaddr, COM20020_REG_W_XREG);
 }
}
