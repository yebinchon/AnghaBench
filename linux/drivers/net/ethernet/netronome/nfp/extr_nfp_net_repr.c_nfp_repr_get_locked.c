
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_reprs {int * reprs; } ;
struct nfp_app {TYPE_1__* pf; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int lockdep_is_held (int *) ;
 struct net_device* rcu_dereference_protected (int ,int ) ;

struct net_device *
nfp_repr_get_locked(struct nfp_app *app, struct nfp_reprs *set, unsigned int id)
{
 return rcu_dereference_protected(set->reprs[id],
      lockdep_is_held(&app->pf->lock));
}
