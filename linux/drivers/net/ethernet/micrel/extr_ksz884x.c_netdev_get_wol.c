
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int sopass; int wolopts; int supported; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int wol_enable; int wol_support; } ;


 int memset (int *,int ,int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netdev_get_wol(struct net_device *dev,
 struct ethtool_wolinfo *wol)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;

 wol->supported = hw_priv->wol_support;
 wol->wolopts = hw_priv->wol_enable;
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
