
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct phy_device {scalar_t__ autoneg; scalar_t__ duplex; int mdix_ctrl; int advertising; scalar_t__ speed; int supported; TYPE_1__ mdio; } ;
struct ethtool_cmd {scalar_t__ phy_address; scalar_t__ advertising; scalar_t__ autoneg; scalar_t__ duplex; int eth_tp_mdix_ctrl; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 int ETHTOOL_LINK_MODE_Autoneg_BIT ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int advertising ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,scalar_t__) ;
 int linkmode_and (int ,int ,int ) ;
 int linkmode_copy (int ,int ) ;
 int linkmode_mod_bit (int ,int ,int) ;
 int phy_start_aneg (struct phy_device*) ;

int phy_ethtool_sset(struct phy_device *phydev, struct ethtool_cmd *cmd)
{
 __ETHTOOL_DECLARE_LINK_MODE_MASK(advertising);
 u32 speed = ethtool_cmd_speed(cmd);

 if (cmd->phy_address != phydev->mdio.addr)
  return -EINVAL;


 ethtool_convert_legacy_u32_to_link_mode(advertising, cmd->advertising);
 linkmode_and(advertising, advertising, phydev->supported);


 if (cmd->autoneg != AUTONEG_ENABLE && cmd->autoneg != AUTONEG_DISABLE)
  return -EINVAL;

 if (cmd->autoneg == AUTONEG_ENABLE && cmd->advertising == 0)
  return -EINVAL;

 if (cmd->autoneg == AUTONEG_DISABLE &&
     ((speed != SPEED_1000 &&
       speed != SPEED_100 &&
       speed != SPEED_10) ||
      (cmd->duplex != DUPLEX_HALF &&
       cmd->duplex != DUPLEX_FULL)))
  return -EINVAL;

 phydev->autoneg = cmd->autoneg;

 phydev->speed = speed;

 linkmode_copy(phydev->advertising, advertising);

 linkmode_mod_bit(ETHTOOL_LINK_MODE_Autoneg_BIT,
    phydev->advertising, AUTONEG_ENABLE == cmd->autoneg);

 phydev->duplex = cmd->duplex;

 phydev->mdix_ctrl = cmd->eth_tp_mdix_ctrl;


 phy_start_aneg(phydev);

 return 0;
}
