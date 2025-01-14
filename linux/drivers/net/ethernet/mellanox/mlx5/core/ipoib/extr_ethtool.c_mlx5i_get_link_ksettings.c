
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int speed; int autoneg; int port; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int EINVAL ;
 int PORT_OTHER ;
 int advertising ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int mlx5i_get_port_settings (struct net_device*,int *,int *) ;
 int mlx5i_get_speed_settings (int ,int ) ;
 int supported ;

__attribute__((used)) static int mlx5i_get_link_ksettings(struct net_device *netdev,
        struct ethtool_link_ksettings *link_ksettings)
{
 u16 ib_link_width_oper;
 u16 ib_proto_oper;
 int speed, ret;

 ret = mlx5i_get_port_settings(netdev, &ib_link_width_oper, &ib_proto_oper);
 if (ret)
  return ret;

 ethtool_link_ksettings_zero_link_mode(link_ksettings, supported);
 ethtool_link_ksettings_zero_link_mode(link_ksettings, advertising);

 speed = mlx5i_get_speed_settings(ib_link_width_oper, ib_proto_oper);
 if (speed < 0)
  return -EINVAL;

 link_ksettings->base.duplex = DUPLEX_FULL;
 link_ksettings->base.port = PORT_OTHER;

 link_ksettings->base.autoneg = AUTONEG_DISABLE;

 link_ksettings->base.speed = speed;

 return 0;
}
