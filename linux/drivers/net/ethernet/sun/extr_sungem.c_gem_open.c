
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int gem_do_start (struct net_device*) ;
 scalar_t__ netif_device_present (struct net_device*) ;

__attribute__((used)) static int gem_open(struct net_device *dev)
{



 if (netif_device_present(dev))
  return gem_do_start(dev);
 return 0;
}
