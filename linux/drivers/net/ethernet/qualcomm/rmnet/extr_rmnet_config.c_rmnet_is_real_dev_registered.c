
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler; } ;


 scalar_t__ rcu_access_pointer (int ) ;
 scalar_t__ rmnet_rx_handler ;

__attribute__((used)) static int rmnet_is_real_dev_registered(const struct net_device *real_dev)
{
 return rcu_access_pointer(real_dev->rx_handler) == rmnet_rx_handler;
}
