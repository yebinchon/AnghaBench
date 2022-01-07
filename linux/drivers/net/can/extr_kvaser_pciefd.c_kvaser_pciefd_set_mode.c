
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int restart_ms; } ;
struct kvaser_pciefd_can {TYPE_1__ can; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int kvaser_pciefd_bus_on (struct kvaser_pciefd_can*) ;
 struct kvaser_pciefd_can* netdev_priv (struct net_device*) ;

__attribute__((used)) static int kvaser_pciefd_set_mode(struct net_device *ndev, enum can_mode mode)
{
 struct kvaser_pciefd_can *can = netdev_priv(ndev);
 int ret = 0;

 switch (mode) {
 case 128:
  if (!can->can.restart_ms)
   ret = kvaser_pciefd_bus_on(can);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return ret;
}
