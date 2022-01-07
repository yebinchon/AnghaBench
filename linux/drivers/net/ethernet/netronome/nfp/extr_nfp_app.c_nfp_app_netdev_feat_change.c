
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_reprs {unsigned int num_reprs; int * reprs; } ;
struct nfp_net {struct nfp_app* app; } ;
struct nfp_app {int * reprs; } ;
struct net_device {int dummy; } ;


 unsigned int __NFP_REPR_TYPE_MAX ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int nfp_netdev_is_nfp_net (struct net_device*) ;
 int nfp_repr_transfer_features (struct net_device*,struct net_device*) ;
 void* rtnl_dereference (int ) ;

__attribute__((used)) static void
nfp_app_netdev_feat_change(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_net *nn;
 unsigned int type;

 if (!nfp_netdev_is_nfp_net(netdev))
  return;
 nn = netdev_priv(netdev);
 if (nn->app != app)
  return;

 for (type = 0; type < __NFP_REPR_TYPE_MAX; type++) {
  struct nfp_reprs *reprs;
  unsigned int i;

  reprs = rtnl_dereference(app->reprs[type]);
  if (!reprs)
   continue;

  for (i = 0; i < reprs->num_reprs; i++) {
   struct net_device *repr;

   repr = rtnl_dereference(reprs->reprs[i]);
   if (!repr)
    continue;

   nfp_repr_transfer_features(repr, netdev);
  }
 }
}
