
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ETH_MIN_MTU ;
 int blackhole_netdev_ops ;
 int gen_lo_setup (struct net_device*,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void blackhole_netdev_setup(struct net_device *dev)
{
 gen_lo_setup(dev, ETH_MIN_MTU, ((void*)0), ((void*)0), &blackhole_netdev_ops, ((void*)0));
}
