
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_vrf {int rth; int tb_id; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int RTN_UNICAST ;
 int dev_net (struct net_device*) ;
 int fib_new_table (int ,int ) ;
 struct net_vrf* netdev_priv (struct net_device*) ;
 int rcu_assign_pointer (int ,struct rtable*) ;
 struct rtable* rt_dst_alloc (struct net_device*,int ,int ,int,int,int ) ;
 int vrf_output ;

__attribute__((used)) static int vrf_rtable_create(struct net_device *dev)
{
 struct net_vrf *vrf = netdev_priv(dev);
 struct rtable *rth;

 if (!fib_new_table(dev_net(dev), vrf->tb_id))
  return -ENOMEM;


 rth = rt_dst_alloc(dev, 0, RTN_UNICAST, 1, 1, 0);
 if (!rth)
  return -ENOMEM;

 rth->dst.output = vrf_output;

 rcu_assign_pointer(vrf->rth, rth);

 return 0;
}
