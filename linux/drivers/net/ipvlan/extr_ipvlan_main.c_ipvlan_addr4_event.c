
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_dev {int dummy; } ;
struct in_ifaddr {int ifa_address; TYPE_1__* ifa_dev; } ;
struct in_addr {int s_addr; } ;
struct TYPE_2__ {scalar_t__ dev; } ;




 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int ipvlan_add_addr4 (struct ipvl_dev*,struct in_addr*) ;
 int ipvlan_del_addr4 (struct ipvl_dev*,struct in_addr*) ;
 int ipvlan_is_valid_dev (struct net_device*) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipvlan_addr4_event(struct notifier_block *unused,
         unsigned long event, void *ptr)
{
 struct in_ifaddr *if4 = (struct in_ifaddr *)ptr;
 struct net_device *dev = (struct net_device *)if4->ifa_dev->dev;
 struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct in_addr ip4_addr;

 if (!ipvlan_is_valid_dev(dev))
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  ip4_addr.s_addr = if4->ifa_address;
  if (ipvlan_add_addr4(ipvlan, &ip4_addr))
   return NOTIFY_BAD;
  break;

 case 129:
  ip4_addr.s_addr = if4->ifa_address;
  ipvlan_del_addr4(ipvlan, &ip4_addr);
  break;
 }

 return NOTIFY_OK;
}
