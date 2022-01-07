
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int phy_addr; } ;
struct net_device {int dummy; } ;
typedef int __u16 ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int mdelay (int) ;
 int mii_read (struct net_device*,int,int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
mii_wait_link (struct net_device *dev, int wait)
{
 __u16 bmsr;
 int phy_addr;
 struct netdev_private *np;

 np = netdev_priv(dev);
 phy_addr = np->phy_addr;

 do {
  bmsr = mii_read (dev, phy_addr, MII_BMSR);
  if (bmsr & BMSR_LSTATUS)
   return 0;
  mdelay (1);
 } while (--wait > 0);
 return -1;
}
