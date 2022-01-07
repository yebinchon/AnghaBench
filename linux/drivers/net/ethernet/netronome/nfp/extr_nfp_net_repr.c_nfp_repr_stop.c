
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int app; } ;
struct net_device {int dummy; } ;


 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_app_repr_stop (int ,struct nfp_repr*) ;
 int nfp_port_configure (struct net_device*,int) ;

__attribute__((used)) static int nfp_repr_stop(struct net_device *netdev)
{
 struct nfp_repr *repr = netdev_priv(netdev);
 int err;

 err = nfp_app_repr_stop(repr->app, repr);
 if (err)
  return err;

 nfp_port_configure(netdev, 0);
 return 0;
}
