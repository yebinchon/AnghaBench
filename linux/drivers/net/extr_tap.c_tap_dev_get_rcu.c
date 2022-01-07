
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_dev {int dummy; } ;
struct net_device {int rx_handler_data; } ;


 struct tap_dev* rcu_dereference (int ) ;

__attribute__((used)) static struct tap_dev *tap_dev_get_rcu(const struct net_device *dev)
{
 return rcu_dereference(dev->rx_handler_data);
}
