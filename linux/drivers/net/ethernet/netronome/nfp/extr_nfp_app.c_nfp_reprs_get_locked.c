
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_reprs {int dummy; } ;
struct nfp_app {TYPE_1__* pf; int * reprs; } ;
typedef enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
struct TYPE_2__ {int lock; } ;


 int lockdep_is_held (int *) ;
 struct nfp_reprs* rcu_dereference_protected (int ,int ) ;

struct nfp_reprs *
nfp_reprs_get_locked(struct nfp_app *app, enum nfp_repr_type type)
{
 return rcu_dereference_protected(app->reprs[type],
      lockdep_is_held(&app->pf->lock));
}
