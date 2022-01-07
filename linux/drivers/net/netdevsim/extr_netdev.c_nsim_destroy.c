
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdevsim {struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int nsim_bpf_uninit (struct netdevsim*) ;
 int nsim_ipsec_teardown (struct netdevsim*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (struct net_device*) ;

void nsim_destroy(struct netdevsim *ns)
{
 struct net_device *dev = ns->netdev;

 rtnl_lock();
 unregister_netdevice(dev);
 nsim_ipsec_teardown(ns);
 nsim_bpf_uninit(ns);
 rtnl_unlock();
 free_netdev(dev);
}
