
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {int (* sriov_disable ) (struct nfp_app*) ;} ;


 int stub1 (struct nfp_app*) ;

__attribute__((used)) static inline void nfp_app_sriov_disable(struct nfp_app *app)
{
 if (app && app->type->sriov_disable)
  app->type->sriov_disable(app);
}
