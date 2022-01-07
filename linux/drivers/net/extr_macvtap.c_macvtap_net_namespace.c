
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int parent; } ;


 void const* dev_net (struct net_device*) ;
 struct net_device* to_net_dev (int ) ;

__attribute__((used)) static const void *macvtap_net_namespace(struct device *d)
{
 struct net_device *dev = to_net_dev(d->parent);
 return dev_net(dev);
}
