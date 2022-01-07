
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int do_vrf_del_slave (struct net_device*,struct net_device*) ;

__attribute__((used)) static int vrf_del_slave(struct net_device *dev, struct net_device *port_dev)
{
 return do_vrf_del_slave(dev, port_dev);
}
