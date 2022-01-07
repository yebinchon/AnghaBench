
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hamachi_private {int mii_if; } ;


 int mii_nway_restart (int *) ;
 struct hamachi_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hamachi_nway_reset(struct net_device *dev)
{
 struct hamachi_private *np = netdev_priv(dev);
 return mii_nway_restart(&np->mii_if);
}
