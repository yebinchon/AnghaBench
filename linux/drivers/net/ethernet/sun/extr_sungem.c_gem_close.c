
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int gem_do_stop (struct net_device*,int ) ;
 scalar_t__ netif_device_present (struct net_device*) ;

__attribute__((used)) static int gem_close(struct net_device *dev)
{
 if (netif_device_present(dev))
  gem_do_stop(dev, 0);

 return 0;
}
