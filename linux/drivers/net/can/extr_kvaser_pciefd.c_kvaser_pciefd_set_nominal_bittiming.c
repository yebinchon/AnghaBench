
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int kvaser_pciefd_set_bittiming (int ,int) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int kvaser_pciefd_set_nominal_bittiming(struct net_device *ndev)
{
 return kvaser_pciefd_set_bittiming(netdev_priv(ndev), 0);
}
