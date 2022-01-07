
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int saved_wolopts; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 int WAKE_ANY ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 rtl_lock_work(tp);
 wol->supported = WAKE_ANY;
 wol->wolopts = tp->saved_wolopts;
 rtl_unlock_work(tp);
}
