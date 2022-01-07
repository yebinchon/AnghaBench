
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; } ;
struct net_device {struct phy_device* phydev; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int genphy_restart_aneg (struct phy_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int hns_nic_nway_reset(struct net_device *netdev)
{
 struct phy_device *phy = netdev->phydev;

 if (!netif_running(netdev))
  return 0;

 if (!phy)
  return -EOPNOTSUPP;

 if (phy->autoneg != AUTONEG_ENABLE)
  return -EINVAL;

 return genphy_restart_aneg(phy);
}
