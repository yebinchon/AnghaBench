
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dev; } ;
struct inet6_dev {int addr_list; } ;
struct in_device {int ifa_list; } ;




 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 struct in_device* __in_dev_get_rtnl (struct net_device*) ;
 int list_empty (int *) ;
 int netif_is_l3_slave (int ) ;
 int netif_is_macvlan (struct net_device*) ;

__attribute__((used)) static bool
mlxsw_sp_rif_should_config(struct mlxsw_sp_rif *rif, struct net_device *dev,
      unsigned long event)
{
 struct inet6_dev *inet6_dev;
 bool addr_list_empty = 1;
 struct in_device *idev;

 switch (event) {
 case 128:
  return rif == ((void*)0);
 case 129:
  idev = __in_dev_get_rtnl(dev);
  if (idev && idev->ifa_list)
   addr_list_empty = 0;

  inet6_dev = __in6_dev_get(dev);
  if (addr_list_empty && inet6_dev &&
      !list_empty(&inet6_dev->addr_list))
   addr_list_empty = 0;




  if (netif_is_macvlan(dev) && addr_list_empty)
   return 1;

  if (rif && addr_list_empty &&
      !netif_is_l3_slave(rif->dev))
   return 1;




  return 0;
 }

 return 0;
}
