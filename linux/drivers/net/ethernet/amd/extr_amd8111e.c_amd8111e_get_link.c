
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct amd8111e_priv {int mii_if; } ;


 int mii_link_ok (int *) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 amd8111e_get_link(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 return mii_link_ok(&lp->mii_if);
}
