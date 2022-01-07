
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct rtl8169_private {TYPE_1__ wk; int napi; int phydev; } ;
struct net_device {int dummy; } ;


 int RTL_FLAG_MAX ;
 int bitmap_zero (int ,int ) ;
 int napi_disable (int *) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_stop (int ) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_pll_power_down (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_net_suspend(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 if (!netif_running(dev))
  return;

 phy_stop(tp->phydev);
 netif_device_detach(dev);

 rtl_lock_work(tp);
 napi_disable(&tp->napi);

 bitmap_zero(tp->wk.flags, RTL_FLAG_MAX);

 rtl_unlock_work(tp);

 rtl_pll_power_down(tp);
}
