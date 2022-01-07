
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net {int dummy; } ;
struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {int (* vnic_clean ) (struct nfp_app*,struct nfp_net*) ;} ;


 int stub1 (struct nfp_app*,struct nfp_net*) ;

__attribute__((used)) static inline void nfp_app_vnic_clean(struct nfp_app *app, struct nfp_net *nn)
{
 if (app->type->vnic_clean)
  app->type->vnic_clean(app, nn);
}
