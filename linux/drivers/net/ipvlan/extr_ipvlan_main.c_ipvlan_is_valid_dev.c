
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipvl_dev {int port; } ;


 struct ipvl_dev* netdev_priv (struct net_device const*) ;
 int netif_is_ipvlan (struct net_device const*) ;

__attribute__((used)) static bool ipvlan_is_valid_dev(const struct net_device *dev)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);

 if (!netif_is_ipvlan(dev))
  return 0;

 if (!ipvlan || !ipvlan->port)
  return 0;

 return 1;
}
