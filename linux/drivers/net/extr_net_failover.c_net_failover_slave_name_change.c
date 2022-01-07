
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_failover_info {int standby_dev; int primary_dev; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 int dev_open (struct net_device*,int *) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;

__attribute__((used)) static int net_failover_slave_name_change(struct net_device *slave_dev,
       struct net_device *failover_dev)
{
 struct net_device *primary_dev, *standby_dev;
 struct net_failover_info *nfo_info;

 nfo_info = netdev_priv(failover_dev);

 primary_dev = rtnl_dereference(nfo_info->primary_dev);
 standby_dev = rtnl_dereference(nfo_info->standby_dev);

 if (slave_dev != primary_dev && slave_dev != standby_dev)
  return -ENODEV;




 dev_open(slave_dev, ((void*)0));

 return 0;
}
