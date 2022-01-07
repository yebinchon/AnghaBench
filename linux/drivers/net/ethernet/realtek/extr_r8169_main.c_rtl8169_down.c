
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int napi; int phydev; } ;
struct net_device {int dummy; } ;


 int napi_disable (int *) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (int ) ;
 int rtl8169_hw_reset (struct rtl8169_private*) ;
 int rtl8169_rx_clear (struct rtl8169_private*) ;
 int rtl8169_rx_missed (struct net_device*) ;
 int rtl8169_tx_clear (struct rtl8169_private*) ;
 int rtl_pll_power_down (struct rtl8169_private*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void rtl8169_down(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 phy_stop(tp->phydev);

 napi_disable(&tp->napi);
 netif_stop_queue(dev);

 rtl8169_hw_reset(tp);





 rtl8169_rx_missed(dev);


 synchronize_rcu();

 rtl8169_tx_clear(tp);

 rtl8169_rx_clear(tp);

 rtl_pll_power_down(tp);
}
