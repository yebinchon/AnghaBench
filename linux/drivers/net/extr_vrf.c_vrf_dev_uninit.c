
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_vrf {int dummy; } ;
struct net_device {int * dstats; } ;


 int free_percpu (int *) ;
 struct net_vrf* netdev_priv (struct net_device*) ;
 int vrf_rt6_release (struct net_device*,struct net_vrf*) ;
 int vrf_rtable_release (struct net_device*,struct net_vrf*) ;

__attribute__((used)) static void vrf_dev_uninit(struct net_device *dev)
{
 struct net_vrf *vrf = netdev_priv(dev);

 vrf_rtable_release(dev, vrf);
 vrf_rt6_release(dev, vrf);

 free_percpu(dev->dstats);
 dev->dstats = ((void*)0);
}
