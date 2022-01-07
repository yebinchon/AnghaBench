
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ep93xx_priv {int mii; } ;


 int mii_link_ok (int *) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ep93xx_get_link(struct net_device *dev)
{
 struct ep93xx_priv *ep = netdev_priv(dev);
 return mii_link_ok(&ep->mii);
}
