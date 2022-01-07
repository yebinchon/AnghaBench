
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net* dev_net (int ) ;
 int macvlan_dev_real_dev (struct net_device const*) ;

__attribute__((used)) static struct net *macvlan_get_link_net(const struct net_device *dev)
{
 return dev_net(macvlan_dev_real_dev(dev));
}
