
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __nfp_repr_free (int ) ;
 int netdev_priv (struct net_device*) ;

void nfp_repr_free(struct net_device *netdev)
{
 __nfp_repr_free(netdev_priv(netdev));
}
