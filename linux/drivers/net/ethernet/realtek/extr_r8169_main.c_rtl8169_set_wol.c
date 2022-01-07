
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int saved_wolopts; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int WAKE_ANY ;
 int __rtl8169_set_wol (struct rtl8169_private*,int) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 scalar_t__ pm_runtime_active (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;
 struct device* tp_to_dev (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct device *d = tp_to_dev(tp);

 if (wol->wolopts & ~WAKE_ANY)
  return -EINVAL;

 pm_runtime_get_noresume(d);

 rtl_lock_work(tp);

 tp->saved_wolopts = wol->wolopts;

 if (pm_runtime_active(d))
  __rtl8169_set_wol(tp, tp->saved_wolopts);

 rtl_unlock_work(tp);

 pm_runtime_put_noidle(d);

 return 0;
}
