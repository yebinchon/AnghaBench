
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int app; } ;
struct net_device {int mtu; } ;


 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_app_check_mtu (int ,struct net_device*,int) ;
 int nfp_app_repr_change_mtu (int ,struct net_device*,int) ;

__attribute__((used)) static int nfp_repr_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct nfp_repr *repr = netdev_priv(netdev);
 int err;

 err = nfp_app_check_mtu(repr->app, netdev, new_mtu);
 if (err)
  return err;

 err = nfp_app_repr_change_mtu(repr->app, netdev, new_mtu);
 if (err)
  return err;

 netdev->mtu = new_mtu;

 return 0;
}
