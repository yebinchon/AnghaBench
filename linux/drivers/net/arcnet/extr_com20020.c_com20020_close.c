
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct arcnet_local {int config; } ;


 int COM20020_REG_W_CONFIG ;
 int TXENcfg ;
 int arcnet_outb (int ,int,int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void com20020_close(struct net_device *dev)
{
 struct arcnet_local *lp = netdev_priv(dev);
 int ioaddr = dev->base_addr;


 lp->config &= ~TXENcfg;
 arcnet_outb(lp->config, ioaddr, COM20020_REG_W_CONFIG);
}
