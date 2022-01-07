
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int linkok; scalar_t__ PHYType; int * phys; scalar_t__ mem; } ;
struct net_device {int dummy; } ;


 scalar_t__ BMCRSR ;
 int BMSR_LSTATUS ;
 int LinkIsUp2 ;
 int MII_BMSR ;
 scalar_t__ MysonPHY ;
 int ioread32 (scalar_t__) ;
 int mdio_read (struct net_device*,int ,int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static void getlinkstatus(struct net_device *dev)



{
 struct netdev_private *np = netdev_priv(dev);
 unsigned int i, DelayTime = 0x1000;

 np->linkok = 0;

 if (np->PHYType == MysonPHY) {
  for (i = 0; i < DelayTime; ++i) {
   if (ioread32(np->mem + BMCRSR) & LinkIsUp2) {
    np->linkok = 1;
    return;
   }
   udelay(100);
  }
 } else {
  for (i = 0; i < DelayTime; ++i) {
   if (mdio_read(dev, np->phys[0], MII_BMSR) & BMSR_LSTATUS) {
    np->linkok = 1;
    return;
   }
   udelay(100);
  }
 }
}
