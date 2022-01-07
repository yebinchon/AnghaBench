
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct skge_port {int duplex; int speed; int autoneg; int advertising; struct skge_hw* hw; } ;
struct skge_hw {int phy_addr; scalar_t__ copper; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int duplex; int speed; int autoneg; int port; int phy_address; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int PORT_FIBRE ;
 int PORT_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int skge_supported_modes (struct skge_hw*) ;

__attribute__((used)) static int skge_get_link_ksettings(struct net_device *dev,
       struct ethtool_link_ksettings *cmd)
{
 struct skge_port *skge = netdev_priv(dev);
 struct skge_hw *hw = skge->hw;
 u32 supported, advertising;

 supported = skge_supported_modes(hw);

 if (hw->copper) {
  cmd->base.port = PORT_TP;
  cmd->base.phy_address = hw->phy_addr;
 } else
  cmd->base.port = PORT_FIBRE;

 advertising = skge->advertising;
 cmd->base.autoneg = skge->autoneg;
 cmd->base.speed = skge->speed;
 cmd->base.duplex = skge->duplex;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
