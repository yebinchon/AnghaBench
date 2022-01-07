
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_failover_info {int standby_dev; int primary_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int speed; int port; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int DUPLEX_UNKNOWN ;
 int PORT_OTHER ;
 int SPEED_UNKNOWN ;
 int __ethtool_get_link_ksettings (struct net_device*,struct ethtool_link_ksettings*) ;
 int net_failover_xmit_ready (struct net_device*) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;

__attribute__((used)) static int nfo_ethtool_get_link_ksettings(struct net_device *dev,
       struct ethtool_link_ksettings *cmd)
{
 struct net_failover_info *nfo_info = netdev_priv(dev);
 struct net_device *slave_dev;

 slave_dev = rtnl_dereference(nfo_info->primary_dev);
 if (!slave_dev || !net_failover_xmit_ready(slave_dev)) {
  slave_dev = rtnl_dereference(nfo_info->standby_dev);
  if (!slave_dev || !net_failover_xmit_ready(slave_dev)) {
   cmd->base.duplex = DUPLEX_UNKNOWN;
   cmd->base.port = PORT_OTHER;
   cmd->base.speed = SPEED_UNKNOWN;

   return 0;
  }
 }

 return __ethtool_get_link_ksettings(slave_dev, cmd);
}
