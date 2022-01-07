
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netdev_private {int mii; } ;
struct net_device {int dummy; } ;


 int mii_link_ok (int *) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netdev_get_link(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 return mii_link_ok(&np->mii);
}
