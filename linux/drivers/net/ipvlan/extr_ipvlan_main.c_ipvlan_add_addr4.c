
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipvl_dev {int addrs_lock; TYPE_1__* dev; int port; } ;
struct in_addr {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int ifup ;
 int ipvlan_add_addr (struct ipvl_dev*,struct in_addr*,int) ;
 scalar_t__ ipvlan_addr_busy (int ,struct in_addr*,int) ;
 int netif_err (struct ipvl_dev*,int ,TYPE_1__*,char*,struct in_addr*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ipvlan_add_addr4(struct ipvl_dev *ipvlan, struct in_addr *ip4_addr)
{
 int ret = -EINVAL;

 spin_lock_bh(&ipvlan->addrs_lock);
 if (ipvlan_addr_busy(ipvlan->port, ip4_addr, 0))
  netif_err(ipvlan, ifup, ipvlan->dev,
     "Failed to add IPv4=%pI4 on %s intf.\n",
     ip4_addr, ipvlan->dev->name);
 else
  ret = ipvlan_add_addr(ipvlan, ip4_addr, 0);
 spin_unlock_bh(&ipvlan->addrs_lock);
 return ret;
}
