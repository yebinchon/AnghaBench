
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int dummy; } ;


 int __sungem_phy_read (struct gem*,int,int) ;
 struct gem* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline int _sungem_phy_read(struct net_device *dev, int mii_id, int reg)
{
 struct gem *gp = netdev_priv(dev);
 return __sungem_phy_read(gp, mii_id, reg);
}
