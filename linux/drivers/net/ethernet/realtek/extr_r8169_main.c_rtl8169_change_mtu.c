
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct net_device {int mtu; } ;


 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int netdev_update_features (struct net_device*) ;
 int rtl_jumbo_config (struct rtl8169_private*,int) ;

__attribute__((used)) static int rtl8169_change_mtu(struct net_device *dev, int new_mtu)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 rtl_jumbo_config(tp, new_mtu);

 dev->mtu = new_mtu;
 netdev_update_features(dev);

 return 0;
}
