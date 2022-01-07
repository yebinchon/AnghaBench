
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mac_device {int (* adjust_link ) (struct mac_device*) ;} ;
struct dpaa_priv {struct mac_device* mac_dev; } ;


 struct dpaa_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct mac_device*) ;

__attribute__((used)) static void dpaa_adjust_link(struct net_device *net_dev)
{
 struct mac_device *mac_dev;
 struct dpaa_priv *priv;

 priv = netdev_priv(net_dev);
 mac_dev = priv->mac_dev;
 mac_dev->adjust_link(mac_dev);
}
