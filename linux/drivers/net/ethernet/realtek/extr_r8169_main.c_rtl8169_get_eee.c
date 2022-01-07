
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int phydev; } ;
struct net_device {int dummy; } ;
struct ethtool_eee {int dummy; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int phy_ethtool_get_eee (int ,struct ethtool_eee*) ;
 int pm_runtime_active (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int rtl_supports_eee (struct rtl8169_private*) ;
 struct device* tp_to_dev (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_get_eee(struct net_device *dev, struct ethtool_eee *data)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct device *d = tp_to_dev(tp);
 int ret;

 if (!rtl_supports_eee(tp))
  return -EOPNOTSUPP;

 pm_runtime_get_noresume(d);

 if (!pm_runtime_active(d)) {
  ret = -EOPNOTSUPP;
 } else {
  ret = phy_ethtool_get_eee(tp->phydev, data);
 }

 pm_runtime_put_noidle(d);

 return ret;
}
