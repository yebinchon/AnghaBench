
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int vsockmon_is_valid_mtu (int) ;

__attribute__((used)) static int vsockmon_change_mtu(struct net_device *dev, int new_mtu)
{
 if (!vsockmon_is_valid_mtu(new_mtu))
  return -EINVAL;

 dev->mtu = new_mtu;
 return 0;
}
