
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int filter_prog; int steering_prog; int security; int pcpu_stats; int disabled; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int) ;
 int __tun_set_ebpf (struct tun_struct*,int *,int *) ;
 int free_percpu (int ) ;
 int list_empty (int *) ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 int security_tun_dev_free_security (int ) ;
 int tun_flow_uninit (struct tun_struct*) ;

__attribute__((used)) static void tun_free_netdev(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);

 BUG_ON(!(list_empty(&tun->disabled)));
 free_percpu(tun->pcpu_stats);
 tun_flow_uninit(tun);
 security_tun_dev_free_security(tun->security);
 __tun_set_ebpf(tun, &tun->steering_prog, ((void*)0));
 __tun_set_ebpf(tun, &tun->filter_prog, ((void*)0));
}
