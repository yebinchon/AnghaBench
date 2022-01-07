
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_reprs {int num_reprs; } ;
struct nfp_repr {int dummy; } ;
struct nfp_app {TYPE_1__* pf; int * reprs; } ;
struct net_device {int dummy; } ;
typedef enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
struct TYPE_2__ {int lock; } ;


 int lockdep_is_held (int *) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_flower_cmsg_portreify (struct nfp_repr*,int) ;
 struct net_device* nfp_repr_get_locked (struct nfp_app*,struct nfp_reprs*,int) ;
 struct nfp_reprs* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static int
nfp_flower_reprs_reify(struct nfp_app *app, enum nfp_repr_type type,
         bool exists)
{
 struct nfp_reprs *reprs;
 int i, err, count = 0;

 reprs = rcu_dereference_protected(app->reprs[type],
       lockdep_is_held(&app->pf->lock));
 if (!reprs)
  return 0;

 for (i = 0; i < reprs->num_reprs; i++) {
  struct net_device *netdev;

  netdev = nfp_repr_get_locked(app, reprs, i);
  if (netdev) {
   struct nfp_repr *repr = netdev_priv(netdev);

   err = nfp_flower_cmsg_portreify(repr, exists);
   if (err)
    return err;
   count++;
  }
 }

 return count;
}
