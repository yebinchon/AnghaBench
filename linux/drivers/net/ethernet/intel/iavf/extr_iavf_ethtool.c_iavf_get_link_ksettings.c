
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iavf_adapter {int link_speed; } ;
struct TYPE_2__ {int duplex; int speed; int port; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;






 int PORT_NONE ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_20000 ;
 int SPEED_25000 ;
 int SPEED_40000 ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int netdev_info (struct net_device*,char*) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int supported ;

__attribute__((used)) static int iavf_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *cmd)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);

 ethtool_link_ksettings_zero_link_mode(cmd, supported);
 cmd->base.autoneg = AUTONEG_DISABLE;
 cmd->base.port = PORT_NONE;

 switch (adapter->link_speed) {
 case 128:
  cmd->base.speed = SPEED_40000;
  break;
 case 129:



  netdev_info(netdev,
       "Speed is 25G, display not supported by this version of ethtool.\n");

  break;
 case 130:
  cmd->base.speed = SPEED_20000;
  break;
 case 132:
  cmd->base.speed = SPEED_10000;
  break;
 case 131:
  cmd->base.speed = SPEED_1000;
  break;
 case 133:
  cmd->base.speed = SPEED_100;
  break;
 default:
  break;
 }
 cmd->base.duplex = DUPLEX_FULL;

 return 0;
}
