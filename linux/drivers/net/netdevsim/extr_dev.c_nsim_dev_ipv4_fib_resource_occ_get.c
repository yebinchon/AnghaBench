
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net {int dummy; } ;


 int NSIM_RESOURCE_IPV4_FIB ;
 int nsim_fib_get_val (struct net*,int ,int) ;

__attribute__((used)) static u64 nsim_dev_ipv4_fib_resource_occ_get(void *priv)
{
 struct net *net = priv;

 return nsim_fib_get_val(net, NSIM_RESOURCE_IPV4_FIB, 0);
}
