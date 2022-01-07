
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int addr; } ;
struct phy_device {scalar_t__ interface; int mdix; int mdix_ctrl; int autoneg; TYPE_2__ mdio; int duplex; int speed; int lp_advertising; int advertising; int supported; } ;
struct TYPE_6__ {int eth_tp_mdix; int eth_tp_mdix_ctrl; int autoneg; int phy_address; int transceiver; int port; int duplex; int speed; } ;
struct TYPE_4__ {int lp_advertising; int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_1__ link_modes; } ;


 scalar_t__ PHY_INTERFACE_MODE_MOCA ;
 int PORT_BNC ;
 int PORT_MII ;
 int XCVR_EXTERNAL ;
 int XCVR_INTERNAL ;
 int linkmode_copy (int ,int ) ;
 scalar_t__ phy_is_internal (struct phy_device*) ;

void phy_ethtool_ksettings_get(struct phy_device *phydev,
          struct ethtool_link_ksettings *cmd)
{
 linkmode_copy(cmd->link_modes.supported, phydev->supported);
 linkmode_copy(cmd->link_modes.advertising, phydev->advertising);
 linkmode_copy(cmd->link_modes.lp_advertising, phydev->lp_advertising);

 cmd->base.speed = phydev->speed;
 cmd->base.duplex = phydev->duplex;
 if (phydev->interface == PHY_INTERFACE_MODE_MOCA)
  cmd->base.port = PORT_BNC;
 else
  cmd->base.port = PORT_MII;
 cmd->base.transceiver = phy_is_internal(phydev) ?
    XCVR_INTERNAL : XCVR_EXTERNAL;
 cmd->base.phy_address = phydev->mdio.addr;
 cmd->base.autoneg = phydev->autoneg;
 cmd->base.eth_tp_mdix_ctrl = phydev->mdix_ctrl;
 cmd->base.eth_tp_mdix = phydev->mdix;
}
