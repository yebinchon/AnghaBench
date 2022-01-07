
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtnet_info {int duplex; int speed; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int port; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int PORT_OTHER ;
 struct virtnet_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int virtnet_get_link_ksettings(struct net_device *dev,
          struct ethtool_link_ksettings *cmd)
{
 struct virtnet_info *vi = netdev_priv(dev);

 cmd->base.speed = vi->speed;
 cmd->base.duplex = vi->duplex;
 cmd->base.port = PORT_OTHER;

 return 0;
}
