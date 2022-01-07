
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int fc_request_control; int fc_autoneg; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_get (struct phy_device*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static void lan78xx_get_pause(struct net_device *net,
         struct ethtool_pauseparam *pause)
{
 struct lan78xx_net *dev = netdev_priv(net);
 struct phy_device *phydev = net->phydev;
 struct ethtool_link_ksettings ecmd;

 phy_ethtool_ksettings_get(phydev, &ecmd);

 pause->autoneg = dev->fc_autoneg;

 if (dev->fc_request_control & FLOW_CTRL_TX)
  pause->tx_pause = 1;

 if (dev->fc_request_control & FLOW_CTRL_RX)
  pause->rx_pause = 1;
}
