
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_repr {int dummy; } ;
struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {int (* repr_stop ) (struct nfp_app*,struct nfp_repr*) ;} ;


 int EINVAL ;
 int stub1 (struct nfp_app*,struct nfp_repr*) ;

__attribute__((used)) static inline int nfp_app_repr_stop(struct nfp_app *app, struct nfp_repr *repr)
{
 if (!app->type->repr_stop)
  return -EINVAL;
 return app->type->repr_stop(app, repr);
}
