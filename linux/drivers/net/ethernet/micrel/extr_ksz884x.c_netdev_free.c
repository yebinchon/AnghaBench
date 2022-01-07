
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ watchdog_timeo; } ;


 int free_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void netdev_free(struct net_device *dev)
{
 if (dev->watchdog_timeo)
  unregister_netdev(dev);

 free_netdev(dev);
}
