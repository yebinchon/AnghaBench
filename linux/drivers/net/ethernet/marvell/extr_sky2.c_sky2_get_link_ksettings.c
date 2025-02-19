
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sky2_port {int advertising; int flags; int duplex; int speed; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int duplex; int autoneg; int port; int speed; int phy_address; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int PHY_ADDR_MARV ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int SKY2_FLAG_AUTO_SPEED ;
 int SPEED_1000 ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 scalar_t__ sky2_is_copper (struct sky2_hw*) ;
 int sky2_supported_modes (struct sky2_hw*) ;

__attribute__((used)) static int sky2_get_link_ksettings(struct net_device *dev,
       struct ethtool_link_ksettings *cmd)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;
 u32 supported, advertising;

 supported = sky2_supported_modes(hw);
 cmd->base.phy_address = PHY_ADDR_MARV;
 if (sky2_is_copper(hw)) {
  cmd->base.port = PORT_TP;
  cmd->base.speed = sky2->speed;
  supported |= SUPPORTED_Autoneg | SUPPORTED_TP;
 } else {
  cmd->base.speed = SPEED_1000;
  cmd->base.port = PORT_FIBRE;
  supported |= SUPPORTED_Autoneg | SUPPORTED_FIBRE;
 }

 advertising = sky2->advertising;
 cmd->base.autoneg = (sky2->flags & SKY2_FLAG_AUTO_SPEED)
  ? AUTONEG_ENABLE : AUTONEG_DISABLE;
 cmd->base.duplex = sky2->duplex;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
