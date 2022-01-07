
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ql3_adapter {int PHYAddr; int flags; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int duplex; int speed; int autoneg; int phy_address; int port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int PORT_FIBRE ;
 int PORT_TP ;
 int QL_LINK_OPTICAL ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 struct ql3_adapter* netdev_priv (struct net_device*) ;
 int ql_get_auto_cfg_status (struct ql3_adapter*) ;
 int ql_get_full_dup (struct ql3_adapter*) ;
 int ql_get_speed (struct ql3_adapter*) ;
 int ql_supported_modes (struct ql3_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ql_get_link_ksettings(struct net_device *ndev,
     struct ethtool_link_ksettings *cmd)
{
 struct ql3_adapter *qdev = netdev_priv(ndev);
 u32 supported, advertising;

 supported = ql_supported_modes(qdev);

 if (test_bit(QL_LINK_OPTICAL, &qdev->flags)) {
  cmd->base.port = PORT_FIBRE;
 } else {
  cmd->base.port = PORT_TP;
  cmd->base.phy_address = qdev->PHYAddr;
 }
 advertising = ql_supported_modes(qdev);
 cmd->base.autoneg = ql_get_auto_cfg_status(qdev);
 cmd->base.speed = ql_get_speed(qdev);
 cmd->base.duplex = ql_get_full_dup(qdev);

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
