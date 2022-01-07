
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int unregister_candev (struct net_device*) ;

__attribute__((used)) static void unregister_flexcandev(struct net_device *dev)
{
 unregister_candev(dev);
}
