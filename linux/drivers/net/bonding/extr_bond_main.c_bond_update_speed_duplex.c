
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {scalar_t__ speed; int duplex; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
typedef scalar_t__ __u32 ;




 int DUPLEX_UNKNOWN ;
 scalar_t__ SPEED_UNKNOWN ;
 int __ethtool_get_link_ksettings (struct net_device*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int bond_update_speed_duplex(struct slave *slave)
{
 struct net_device *slave_dev = slave->dev;
 struct ethtool_link_ksettings ecmd;
 int res;

 slave->speed = SPEED_UNKNOWN;
 slave->duplex = DUPLEX_UNKNOWN;

 res = __ethtool_get_link_ksettings(slave_dev, &ecmd);
 if (res < 0)
  return 1;
 if (ecmd.base.speed == 0 || ecmd.base.speed == ((__u32)-1))
  return 1;
 switch (ecmd.base.duplex) {
 case 129:
 case 128:
  break;
 default:
  return 1;
 }

 slave->speed = ecmd.base.speed;
 slave->duplex = ecmd.base.duplex;

 return 0;
}
