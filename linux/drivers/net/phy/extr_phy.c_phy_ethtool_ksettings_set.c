
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct phy_device {int mdix_ctrl; scalar_t__ duplex; int advertising; scalar_t__ speed; scalar_t__ autoneg; int supported; TYPE_1__ mdio; } ;
struct TYPE_6__ {scalar_t__ autoneg; scalar_t__ duplex; scalar_t__ speed; scalar_t__ phy_address; int eth_tp_mdix_ctrl; } ;
struct TYPE_5__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_2__ link_modes; } ;


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
 int linkmode_and (int ,int ,int ) ;
 int linkmode_copy (int ,int ) ;
 scalar_t__ linkmode_empty (int ) ;
 int linkmode_mod_bit (int ,int ,int) ;
 int phy_start_aneg (struct phy_device*) ;

int phy_ethtool_ksettings_set(struct phy_device *phydev,
         const struct ethtool_link_ksettings *cmd)
{
 __ETHTOOL_DECLARE_LINK_MODE_MASK(advertising);
 u8 autoneg = cmd->base.autoneg;
 u8 duplex = cmd->base.duplex;
 u32 speed = cmd->base.speed;

 if (cmd->base.phy_address != phydev->mdio.addr)
  return -EINVAL;

 linkmode_copy(advertising, cmd->link_modes.advertising);


 linkmode_and(advertising, advertising, phydev->supported);


 if (autoneg != AUTONEG_ENABLE && autoneg != AUTONEG_DISABLE)
  return -EINVAL;

 if (autoneg == AUTONEG_ENABLE && linkmode_empty(advertising))
  return -EINVAL;

 if (autoneg == AUTONEG_DISABLE &&
     ((speed != SPEED_1000 &&
       speed != SPEED_100 &&
       speed != SPEED_10) ||
      (duplex != DUPLEX_HALF &&
       duplex != DUPLEX_FULL)))
  return -EINVAL;

 phydev->autoneg = autoneg;

 phydev->speed = speed;

 linkmode_copy(phydev->advertising, advertising);

 linkmode_mod_bit(ETHTOOL_LINK_MODE_Autoneg_BIT,
    phydev->advertising, autoneg == AUTONEG_ENABLE);

 phydev->duplex = duplex;

 phydev->mdix_ctrl = cmd->base.eth_tp_mdix_ctrl;


 phy_start_aneg(phydev);

 return 0;
}
