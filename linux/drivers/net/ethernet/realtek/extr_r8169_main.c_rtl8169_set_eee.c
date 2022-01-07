
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8169_private {int phydev; } ;
struct net_device {TYPE_1__* phydev; } ;
struct ethtool_eee {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; scalar_t__ duplex; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EOPNOTSUPP ;
 int EPROTONOSUPPORT ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int phy_ethtool_set_eee (int ,struct ethtool_eee*) ;
 int pm_runtime_active (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int rtl_supports_eee (struct rtl8169_private*) ;
 struct device* tp_to_dev (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_set_eee(struct net_device *dev, struct ethtool_eee *data)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct device *d = tp_to_dev(tp);
 int ret;

 if (!rtl_supports_eee(tp))
  return -EOPNOTSUPP;

 pm_runtime_get_noresume(d);

 if (!pm_runtime_active(d)) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 if (dev->phydev->autoneg == AUTONEG_DISABLE ||
     dev->phydev->duplex != DUPLEX_FULL) {
  ret = -EPROTONOSUPPORT;
  goto out;
 }

 ret = phy_ethtool_set_eee(tp->phydev, data);
out:
 pm_runtime_put_noidle(d);
 return ret;
}
