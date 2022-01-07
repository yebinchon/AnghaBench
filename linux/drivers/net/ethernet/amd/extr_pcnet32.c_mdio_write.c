
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcnet32_private {TYPE_1__* a; int mii; } ;
struct net_device {unsigned long base_addr; } ;
struct TYPE_2__ {int (* write_bcr ) (unsigned long,int,int) ;} ;


 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int stub1 (unsigned long,int,int) ;
 int stub2 (unsigned long,int,int) ;

__attribute__((used)) static void mdio_write(struct net_device *dev, int phy_id, int reg_num, int val)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 unsigned long ioaddr = dev->base_addr;

 if (!lp->mii)
  return;

 lp->a->write_bcr(ioaddr, 33, ((phy_id & 0x1f) << 5) | (reg_num & 0x1f));
 lp->a->write_bcr(ioaddr, 34, val);
}
