
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks8851_net {int lock; } ;


 int ks8851_phy_reg (int) ;
 int ks8851_wrreg16 (struct ks8851_net*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ks8851_phy_write(struct net_device *dev,
        int phy, int reg, int value)
{
 struct ks8851_net *ks = netdev_priv(dev);
 int ksreg;

 ksreg = ks8851_phy_reg(reg);
 if (ksreg) {
  mutex_lock(&ks->lock);
  ks8851_wrreg16(ks, ksreg, value);
  mutex_unlock(&ks->lock);
 }
}
