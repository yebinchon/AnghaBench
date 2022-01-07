
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int max_mtu; int min_mtu; int mtu; } ;



__attribute__((used)) static int geneve_change_mtu(struct net_device *dev, int new_mtu)
{
 if (new_mtu > dev->max_mtu)
  new_mtu = dev->max_mtu;
 else if (new_mtu < dev->min_mtu)
  new_mtu = dev->min_mtu;

 dev->mtu = new_mtu;
 return 0;
}
