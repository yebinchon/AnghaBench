
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int wol_support; int wol_enable; int hw; } ;


 int EINVAL ;
 int WAKE_PHY ;
 int hw_enable_wol (int *,int,int const*) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_set_wol(struct net_device *dev,
 struct ethtool_wolinfo *wol)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;


 static const u8 net_addr[] = { 192, 168, 1, 1 };

 if (wol->wolopts & ~hw_priv->wol_support)
  return -EINVAL;

 hw_priv->wol_enable = wol->wolopts;


 if (wol->wolopts)
  hw_priv->wol_enable |= WAKE_PHY;
 hw_enable_wol(&hw_priv->hw, hw_priv->wol_enable, net_addr);
 return 0;
}
