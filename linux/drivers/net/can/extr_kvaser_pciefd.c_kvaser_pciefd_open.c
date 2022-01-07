
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct kvaser_pciefd_can {int dummy; } ;


 int kvaser_pciefd_bus_on (struct kvaser_pciefd_can*) ;
 struct kvaser_pciefd_can* netdev_priv (struct net_device*) ;
 int open_candev (struct net_device*) ;

__attribute__((used)) static int kvaser_pciefd_open(struct net_device *netdev)
{
 int err;
 struct kvaser_pciefd_can *can = netdev_priv(netdev);

 err = open_candev(netdev);
 if (err)
  return err;

 err = kvaser_pciefd_bus_on(can);
 if (err)
  return err;

 return 0;
}
