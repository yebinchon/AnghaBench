
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_reprs {int dummy; } ;
struct nfp_app {int * reprs; } ;
typedef enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;


 struct nfp_reprs* nfp_reprs_get_locked (struct nfp_app*,int) ;
 int rcu_assign_pointer (int ,struct nfp_reprs*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

struct nfp_reprs *
nfp_app_reprs_set(struct nfp_app *app, enum nfp_repr_type type,
    struct nfp_reprs *reprs)
{
 struct nfp_reprs *old;

 old = nfp_reprs_get_locked(app, type);
 rtnl_lock();
 rcu_assign_pointer(app->reprs[type], reprs);
 rtnl_unlock();

 return old;
}
