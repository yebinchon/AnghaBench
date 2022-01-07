
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct hwsim_net {int wmediumd; } ;


 int hwsim_net_id ;
 struct hwsim_net* net_generic (struct net*,int ) ;

__attribute__((used)) static inline void hwsim_net_set_wmediumd(struct net *net, u32 portid)
{
 struct hwsim_net *hwsim_net = net_generic(net, hwsim_net_id);

 hwsim_net->wmediumd = portid;
}
