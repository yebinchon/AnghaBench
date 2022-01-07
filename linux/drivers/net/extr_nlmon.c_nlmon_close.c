
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmon {int nt; } ;
struct net_device {int dummy; } ;


 struct nlmon* netdev_priv (struct net_device*) ;
 int netlink_remove_tap (int *) ;

__attribute__((used)) static int nlmon_close(struct net_device *dev)
{
 struct nlmon *nlmon = netdev_priv(dev);

 return netlink_remove_tap(&nlmon->nt);
}
