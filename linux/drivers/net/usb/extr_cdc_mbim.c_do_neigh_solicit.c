
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct usbnet {struct net_device* net; } ;
struct net_device {int dummy; } ;
struct nd_msg {int target; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct TYPE_3__ {int forwarding; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct TYPE_4__ {int (* ndisc_send_na ) (struct net_device*,int *,int *,int,int,int,int) ;} ;


 int ETH_P_8021Q ;
 int IPV6_ADDR_UNICAST ;
 struct net_device* __vlan_find_dev_deep_rcu (struct net_device*,int ,scalar_t__) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int htons (int ) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int ipv6_addr_is_solict_mult (int *) ;
 int ipv6_addr_type (int *) ;
 TYPE_2__* ipv6_stub ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct net_device*,int *,int *,int,int,int,int) ;

__attribute__((used)) static void do_neigh_solicit(struct usbnet *dev, u8 *buf, u16 tci)
{
 struct ipv6hdr *iph = (void *)buf;
 struct nd_msg *msg = (void *)(iph + 1);
 struct net_device *netdev;
 struct inet6_dev *in6_dev;
 bool is_router;




 if (!ipv6_addr_is_solict_mult(&iph->daddr) ||
     !(ipv6_addr_type(&iph->saddr) & IPV6_ADDR_UNICAST))
  return;


 rcu_read_lock();
 if (tci) {
  netdev = __vlan_find_dev_deep_rcu(dev->net, htons(ETH_P_8021Q),
        tci);
  if (!netdev) {
   rcu_read_unlock();
   return;
  }
 } else {
  netdev = dev->net;
 }
 dev_hold(netdev);
 rcu_read_unlock();

 in6_dev = in6_dev_get(netdev);
 if (!in6_dev)
  goto out;
 is_router = !!in6_dev->cnf.forwarding;
 in6_dev_put(in6_dev);


 ipv6_stub->ndisc_send_na(netdev, &iph->saddr, &msg->target,
     is_router ,
     1 ,
     0 ,
     1 );
out:
 dev_put(netdev);
}
