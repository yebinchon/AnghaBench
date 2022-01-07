
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct hwsim_net {scalar_t__ netgroup; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int hwsim_net_id ;
 int hwsim_netgroup_ida ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 struct hwsim_net* net_generic (struct net*,int ) ;

__attribute__((used)) static inline int hwsim_net_set_netgroup(struct net *net)
{
 struct hwsim_net *hwsim_net = net_generic(net, hwsim_net_id);

 hwsim_net->netgroup = ida_simple_get(&hwsim_netgroup_ida,
          0, 0, GFP_KERNEL);
 return hwsim_net->netgroup >= 0 ? 0 : -ENOMEM;
}
