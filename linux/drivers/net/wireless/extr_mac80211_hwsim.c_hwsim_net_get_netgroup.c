
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct hwsim_net {int netgroup; } ;


 int hwsim_net_id ;
 struct hwsim_net* net_generic (struct net*,int ) ;

__attribute__((used)) static inline int hwsim_net_get_netgroup(struct net *net)
{
 struct hwsim_net *hwsim_net = net_generic(net, hwsim_net_id);

 return hwsim_net->netgroup;
}
