
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_net {int lock; } ;


 int ks_phy_reg (int) ;
 int ks_rdreg16 (struct ks_net*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ks_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_phy_read(struct net_device *netdev, int phy_addr, int reg)
{
 struct ks_net *ks = netdev_priv(netdev);
 int ksreg;
 int result;

 ksreg = ks_phy_reg(reg);
 if (!ksreg)
  return 0x0;

 mutex_lock(&ks->lock);
 result = ks_rdreg16(ks, ksreg);
 mutex_unlock(&ks->lock);

 return result;
}
