
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_reprs {int num_reprs; int * reprs; } ;
struct nfp_repr {TYPE_1__* port; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ NFP_PORT_INVALID ;
 int NFP_REPR_TYPE_PHYS_PORT ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_app_repr_preclean (struct nfp_app*,struct net_device*) ;
 int nfp_repr_clean (struct nfp_repr*) ;
 struct net_device* nfp_repr_get_locked (struct nfp_app*,struct nfp_reprs*,int) ;
 struct nfp_reprs* nfp_reprs_get_locked (struct nfp_app*,int ) ;
 int rcu_assign_pointer (int ,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int synchronize_rcu () ;

int nfp_reprs_resync_phys_ports(struct nfp_app *app)
{
 struct net_device *netdev;
 struct nfp_reprs *reprs;
 struct nfp_repr *repr;
 int i;

 reprs = nfp_reprs_get_locked(app, NFP_REPR_TYPE_PHYS_PORT);
 if (!reprs)
  return 0;

 for (i = 0; i < reprs->num_reprs; i++) {
  netdev = nfp_repr_get_locked(app, reprs, i);
  if (!netdev)
   continue;

  repr = netdev_priv(netdev);
  if (repr->port->type != NFP_PORT_INVALID)
   continue;

  nfp_app_repr_preclean(app, netdev);
  rtnl_lock();
  rcu_assign_pointer(reprs->reprs[i], ((void*)0));
  rtnl_unlock();
  synchronize_rcu();
  nfp_repr_clean(repr);
 }

 return 0;
}
