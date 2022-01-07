
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftmac100 {int mii; } ;


 int mii_nway_restart (int *) ;
 struct ftmac100* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ftmac100_nway_reset(struct net_device *netdev)
{
 struct ftmac100 *priv = netdev_priv(netdev);
 return mii_nway_restart(&priv->mii);
}
