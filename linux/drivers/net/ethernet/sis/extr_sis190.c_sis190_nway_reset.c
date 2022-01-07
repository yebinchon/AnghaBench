
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int mii_if; } ;
struct net_device {int dummy; } ;


 int mii_nway_restart (int *) ;
 struct sis190_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int sis190_nway_reset(struct net_device *dev)
{
 struct sis190_private *tp = netdev_priv(dev);

 return mii_nway_restart(&tp->mii_if);
}
