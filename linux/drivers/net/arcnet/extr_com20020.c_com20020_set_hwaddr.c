
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int base_addr; int * dev_addr; } ;
struct arcnet_local {int dummy; } ;


 int COM20020_REG_W_XREG ;
 int SUB_NODE ;
 int arcnet_outb (int ,int,int ) ;
 int com20020_set_subaddress (struct arcnet_local*,int,int ) ;
 int memcpy (int *,int ,int) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int com20020_set_hwaddr(struct net_device *dev, void *addr)
{
 int ioaddr = dev->base_addr;
 struct arcnet_local *lp = netdev_priv(dev);
 struct sockaddr *hwaddr = addr;

 memcpy(dev->dev_addr, hwaddr->sa_data, 1);
 com20020_set_subaddress(lp, ioaddr, SUB_NODE);
 arcnet_outb(dev->dev_addr[0], ioaddr, COM20020_REG_W_XREG);

 return 0;
}
