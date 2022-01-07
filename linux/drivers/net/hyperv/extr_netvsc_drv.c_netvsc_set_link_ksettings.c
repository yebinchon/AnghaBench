
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device_context {int duplex; int speed; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int EINVAL ;
 int ethtool_validate_duplex (int ) ;
 int ethtool_validate_speed (int ) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netvsc_validate_ethtool_ss_cmd (struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int netvsc_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct net_device_context *ndc = netdev_priv(dev);
 u32 speed;

 speed = cmd->base.speed;
 if (!ethtool_validate_speed(speed) ||
     !ethtool_validate_duplex(cmd->base.duplex) ||
     !netvsc_validate_ethtool_ss_cmd(cmd))
  return -EINVAL;

 ndc->speed = speed;
 ndc->duplex = cmd->base.duplex;

 return 0;
}
