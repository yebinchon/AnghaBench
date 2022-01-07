
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct dev_priv {int mii_if; } ;


 int mii_link_ok (int *) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netdev_get_link(struct net_device *dev)
{
 struct dev_priv *priv = netdev_priv(dev);
 int rc;

 rc = mii_link_ok(&priv->mii_if);
 return rc;
}
