
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct amd8111e_priv {int mii_if; } ;


 int mii_nway_restart (int *) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int amd8111e_nway_reset(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 return mii_nway_restart(&lp->mii_if);
}
