
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {int (* sriov_enable ) (struct nfp_app*,int) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct nfp_app*,int) ;

__attribute__((used)) static inline int nfp_app_sriov_enable(struct nfp_app *app, int num_vfs)
{
 if (!app || !app->type->sriov_enable)
  return -EOPNOTSUPP;
 return app->type->sriov_enable(app, num_vfs);
}
