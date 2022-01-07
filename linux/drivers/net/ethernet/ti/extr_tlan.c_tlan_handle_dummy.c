
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int netdev_info (struct net_device*,char*) ;

__attribute__((used)) static u32 tlan_handle_dummy(struct net_device *dev, u16 host_int)
{
 netdev_info(dev, "Test interrupt\n");
 return 1;

}
