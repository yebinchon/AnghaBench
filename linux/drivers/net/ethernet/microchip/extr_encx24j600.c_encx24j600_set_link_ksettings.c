
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int duplex; int speed; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int encx24j600_setlink (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static int
encx24j600_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 return encx24j600_setlink(dev, cmd->base.autoneg,
      cmd->base.speed, cmd->base.duplex);
}
