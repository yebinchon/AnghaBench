
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int dummy; } ;


 int __sungem_phy_write (struct gem*,int,int,int) ;
 struct gem* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void _sungem_phy_write(struct net_device *dev, int mii_id, int reg, int val)
{
 struct gem *gp = netdev_priv(dev);
 __sungem_phy_write(gp, mii_id, reg, val & 0xffff);
}
