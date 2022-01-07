
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;

void free_candev(struct net_device *dev)
{
 free_netdev(dev);
}
