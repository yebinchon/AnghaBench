
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 struct net_device* ____alloc_ei_netdev (int) ;
 int ei_netdev_ops ;

struct net_device *__alloc_ei_netdev(int size)
{
 struct net_device *dev = ____alloc_ei_netdev(size);
 if (dev)
  dev->netdev_ops = &ei_netdev_ops;
 return dev;
}
