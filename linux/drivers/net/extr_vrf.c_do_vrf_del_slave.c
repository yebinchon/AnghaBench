
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; } ;


 int IFF_L3MDEV_SLAVE ;
 int cycle_netdev (struct net_device*,int *) ;
 int netdev_upper_dev_unlink (struct net_device*,struct net_device*) ;

__attribute__((used)) static int do_vrf_del_slave(struct net_device *dev, struct net_device *port_dev)
{
 netdev_upper_dev_unlink(port_dev, dev);
 port_dev->priv_flags &= ~IFF_L3MDEV_SLAVE;

 cycle_netdev(port_dev, ((void*)0));

 return 0;
}
