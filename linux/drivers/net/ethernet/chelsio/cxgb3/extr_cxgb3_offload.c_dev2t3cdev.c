
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct port_info {scalar_t__ adapter; } ;
struct net_device {int dummy; } ;


 struct port_info* netdev_priv (struct net_device*) ;

struct t3cdev *dev2t3cdev(struct net_device *dev)
{
 const struct port_info *pi = netdev_priv(dev);

 return (struct t3cdev *)pi->adapter;
}
