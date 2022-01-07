
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; int * rtnl_link_ops; } ;
struct can_priv {int dummy; } ;


 scalar_t__ ARPHRD_CAN ;
 int can_link_ops ;
 struct can_priv* netdev_priv (struct net_device*) ;

struct can_priv *safe_candev_priv(struct net_device *dev)
{
 if (dev->type != ARPHRD_CAN || dev->rtnl_link_ops != &can_link_ops)
  return ((void*)0);

 return netdev_priv(dev);
}
