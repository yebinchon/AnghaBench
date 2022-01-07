
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EBUSY ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int change_mtu(struct net_device *dev, int new_mtu)
{
 if (netif_running(dev))
  return -EBUSY;
 dev->mtu = new_mtu;
 return 0;
}
