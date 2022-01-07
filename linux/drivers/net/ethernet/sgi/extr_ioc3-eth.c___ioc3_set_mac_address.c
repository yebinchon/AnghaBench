
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int* dev_addr; } ;
struct ioc3_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int emar_l; int emar_h; } ;


 struct ioc3_private* netdev_priv (struct net_device*) ;
 int writel (int,int *) ;

__attribute__((used)) static void __ioc3_set_mac_address(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);

 writel((dev->dev_addr[5] << 8) |
        dev->dev_addr[4],
        &ip->regs->emar_h);
 writel((dev->dev_addr[3] << 24) |
        (dev->dev_addr[2] << 16) |
        (dev->dev_addr[1] << 8) |
        dev->dev_addr[0],
        &ip->regs->emar_l);
}
