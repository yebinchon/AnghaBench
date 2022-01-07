
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 int EL3_IO_EXTENT ;
 int free_netdev (struct net_device*) ;
 int release_region (int ,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void el3_common_remove (struct net_device *dev)
{
 unregister_netdev (dev);
 release_region(dev->base_addr, EL3_IO_EXTENT);
 free_netdev (dev);
}
