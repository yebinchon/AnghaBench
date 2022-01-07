
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;

int sunvnet_set_mac_addr_common(struct net_device *dev, void *p)
{
 return -EINVAL;
}
