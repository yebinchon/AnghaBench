
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int autoneg; } ;
struct net_device {int dummy; } ;
struct lan743x_phy {int fc_request_control; int fc_autoneg; } ;
struct lan743x_adapter {int mdiobus; struct net_device* netdev; struct lan743x_phy phy; } ;


 int EIO ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int PHY_INTERFACE_MODE_GMII ;
 int lan743x_phy_link_status_change ;
 int phy_connect_direct (struct net_device*,struct phy_device*,int ,int ) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_remove_link_mode (struct phy_device*,int ) ;
 int phy_start (struct phy_device*) ;
 int phy_start_aneg (struct phy_device*) ;
 int phy_support_asym_pause (struct phy_device*) ;

__attribute__((used)) static int lan743x_phy_open(struct lan743x_adapter *adapter)
{
 struct lan743x_phy *phy = &adapter->phy;
 struct phy_device *phydev;
 struct net_device *netdev;
 int ret = -EIO;

 netdev = adapter->netdev;
 phydev = phy_find_first(adapter->mdiobus);
 if (!phydev)
  goto return_error;

 ret = phy_connect_direct(netdev, phydev,
     lan743x_phy_link_status_change,
     PHY_INTERFACE_MODE_GMII);
 if (ret)
  goto return_error;


 phy_remove_link_mode(phydev, ETHTOOL_LINK_MODE_1000baseT_Half_BIT);


 phy_support_asym_pause(phydev);
 phy->fc_request_control = (FLOW_CTRL_RX | FLOW_CTRL_TX);
 phy->fc_autoneg = phydev->autoneg;

 phy_start(phydev);
 phy_start_aneg(phydev);
 return 0;

return_error:
 return ret;
}
