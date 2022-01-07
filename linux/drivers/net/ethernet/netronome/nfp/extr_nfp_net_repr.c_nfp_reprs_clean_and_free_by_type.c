
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_reprs {int num_reprs; } ;
struct nfp_app {TYPE_1__* pf; int * reprs; } ;
struct net_device {int dummy; } ;
typedef enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
struct TYPE_2__ {int lock; } ;


 int lockdep_is_held (int *) ;
 int nfp_app_repr_preclean (struct nfp_app*,struct net_device*) ;
 struct nfp_reprs* nfp_app_reprs_set (struct nfp_app*,int,int *) ;
 struct net_device* nfp_repr_get_locked (struct nfp_app*,struct nfp_reprs*,int) ;
 int nfp_reprs_clean_and_free (struct nfp_app*,struct nfp_reprs*) ;
 struct nfp_reprs* rcu_dereference_protected (int ,int ) ;
 int synchronize_rcu () ;

void
nfp_reprs_clean_and_free_by_type(struct nfp_app *app, enum nfp_repr_type type)
{
 struct net_device *netdev;
 struct nfp_reprs *reprs;
 int i;

 reprs = rcu_dereference_protected(app->reprs[type],
       lockdep_is_held(&app->pf->lock));
 if (!reprs)
  return;




 for (i = 0; i < reprs->num_reprs; i++) {
  netdev = nfp_repr_get_locked(app, reprs, i);
  if (netdev)
   nfp_app_repr_preclean(app, netdev);
 }

 reprs = nfp_app_reprs_set(app, type, ((void*)0));

 synchronize_rcu();
 nfp_reprs_clean_and_free(app, reprs);
}
