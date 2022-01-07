
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_local {scalar_t__ virt_addr; } ;
struct net_device {int dummy; } ;


 scalar_t__ ADD_PORT ;
 scalar_t__ DATA_PORT ;
 int ioread16 (scalar_t__) ;
 int iowrite16 (int ,scalar_t__) ;
 struct net_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static u16
readreg(struct net_device *dev, u16 regno)
{
 struct net_local *lp = netdev_priv(dev);

 iowrite16(regno, lp->virt_addr + ADD_PORT);
 return ioread16(lp->virt_addr + DATA_PORT);
}
