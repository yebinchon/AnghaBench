
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dev; } ;
struct rtable {struct dst_entry dst; } ;
struct net_vrf {int rth; } ;
struct net_device {int dummy; } ;
struct net {int loopback_dev; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int dev_hold (int ) ;
 struct net* dev_net (struct net_device*) ;
 int dev_put (int ) ;
 int dst_release (struct dst_entry*) ;
 struct rtable* rtnl_dereference (int ) ;
 int synchronize_rcu () ;

__attribute__((used)) static void vrf_rtable_release(struct net_device *dev, struct net_vrf *vrf)
{
 struct rtable *rth = rtnl_dereference(vrf->rth);
 struct net *net = dev_net(dev);
 struct dst_entry *dst;

 RCU_INIT_POINTER(vrf->rth, ((void*)0));
 synchronize_rcu();




 if (rth) {
  dst = &rth->dst;
  dev_put(dst->dev);
  dst->dev = net->loopback_dev;
  dev_hold(dst->dev);
  dst_release(dst);
 }
}
