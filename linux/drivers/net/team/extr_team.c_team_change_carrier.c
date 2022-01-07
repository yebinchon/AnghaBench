
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int user_carrier_enabled; } ;
struct net_device {int dummy; } ;


 struct team* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static int team_change_carrier(struct net_device *dev, bool new_carrier)
{
 struct team *team = netdev_priv(dev);

 team->user_carrier_enabled = 1;

 if (new_carrier)
  netif_carrier_on(dev);
 else
  netif_carrier_off(dev);
 return 0;
}
