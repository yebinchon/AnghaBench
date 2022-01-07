
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int fza_set_mac_address(struct net_device *dev, void *addr)
{
 return -EOPNOTSUPP;
}
