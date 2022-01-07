
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int do_vrf_add_slave (struct net_device*,struct net_device*,struct netlink_ext_ack*) ;
 scalar_t__ netif_is_l3_master (struct net_device*) ;
 scalar_t__ netif_is_l3_slave (struct net_device*) ;

__attribute__((used)) static int vrf_add_slave(struct net_device *dev, struct net_device *port_dev,
    struct netlink_ext_ack *extack)
{
 if (netif_is_l3_master(port_dev)) {
  NL_SET_ERR_MSG(extack,
          "Can not enslave an L3 master device to a VRF");
  return -EINVAL;
 }

 if (netif_is_l3_slave(port_dev))
  return -EINVAL;

 return do_vrf_add_slave(dev, port_dev, extack);
}
