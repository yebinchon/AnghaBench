
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int numqueues; } ;
struct net_device {int dummy; } ;


 int EPERM ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static int tun_net_change_carrier(struct net_device *dev, bool new_carrier)
{
 if (new_carrier) {
  struct tun_struct *tun = netdev_priv(dev);

  if (!tun->numqueues)
   return -EPERM;

  netif_carrier_on(dev);
 } else {
  netif_carrier_off(dev);
 }
 return 0;
}
