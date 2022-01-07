
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int module; struct net_device* dev; } ;
struct nlmon {TYPE_1__ nt; } ;
struct net_device {int dummy; } ;


 int THIS_MODULE ;
 struct nlmon* netdev_priv (struct net_device*) ;
 int netlink_add_tap (TYPE_1__*) ;

__attribute__((used)) static int nlmon_open(struct net_device *dev)
{
 struct nlmon *nlmon = netdev_priv(dev);

 nlmon->nt.dev = dev;
 nlmon->nt.module = THIS_MODULE;
 return netlink_add_tap(&nlmon->nt);
}
