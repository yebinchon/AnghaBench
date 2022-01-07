
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 int ** slcan_devs ;

__attribute__((used)) static void slc_free_netdev(struct net_device *dev)
{
 int i = dev->base_addr;

 slcan_devs[i] = ((void*)0);
}
