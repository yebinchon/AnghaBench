
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct octeon_mgmt {int * phy_np; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 int PHY_INTERFACE_MODE_MII ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ octeon_is_simulation () ;
 int octeon_mgmt_adjust_link ;
 struct phy_device* of_phy_connect (struct net_device*,int *,int ,int ,int ) ;

__attribute__((used)) static int octeon_mgmt_init_phy(struct net_device *netdev)
{
 struct octeon_mgmt *p = netdev_priv(netdev);
 struct phy_device *phydev = ((void*)0);

 if (octeon_is_simulation() || p->phy_np == ((void*)0)) {

  netif_carrier_on(netdev);
  return 0;
 }

 phydev = of_phy_connect(netdev, p->phy_np,
    octeon_mgmt_adjust_link, 0,
    PHY_INTERFACE_MODE_MII);

 if (!phydev)
  return -ENODEV;

 return 0;
}
