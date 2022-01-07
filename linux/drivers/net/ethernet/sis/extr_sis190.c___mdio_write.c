
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int mmio_addr; } ;
struct net_device {int dummy; } ;


 int mdio_write (int ,int,int,int) ;
 struct sis190_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void __mdio_write(struct net_device *dev, int phy_id, int reg, int val)
{
 struct sis190_private *tp = netdev_priv(dev);

 mdio_write(tp->mmio_addr, phy_id, reg, val);
}
