
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8169_private {int phydev; TYPE_1__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ net_ratelimit () ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int phy_print_status (int ) ;
 int pm_request_resume (int *) ;
 int pm_runtime_idle (int *) ;
 int rtl_link_chg_patch (struct rtl8169_private*) ;

__attribute__((used)) static void r8169_phylink_handler(struct net_device *ndev)
{
 struct rtl8169_private *tp = netdev_priv(ndev);

 if (netif_carrier_ok(ndev)) {
  rtl_link_chg_patch(tp);
  pm_request_resume(&tp->pci_dev->dev);
 } else {
  pm_runtime_idle(&tp->pci_dev->dev);
 }

 if (net_ratelimit())
  phy_print_status(tp->phydev);
}
