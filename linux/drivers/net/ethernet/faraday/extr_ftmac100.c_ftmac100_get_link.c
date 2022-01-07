
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ftmac100 {int mii; } ;


 int mii_link_ok (int *) ;
 struct ftmac100* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ftmac100_get_link(struct net_device *netdev)
{
 struct ftmac100 *priv = netdev_priv(netdev);
 return mii_link_ok(&priv->mii);
}
