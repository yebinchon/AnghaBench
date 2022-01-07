
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct epic_private {int mii; } ;


 int mii_nway_restart (int *) ;
 struct epic_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_nway_reset(struct net_device *dev)
{
 struct epic_private *np = netdev_priv(dev);
 return mii_nway_restart(&np->mii);
}
