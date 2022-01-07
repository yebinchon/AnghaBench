
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net {int dummy; } ;
struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {int (* vnic_alloc ) (struct nfp_app*,struct nfp_net*,unsigned int) ;} ;


 int stub1 (struct nfp_app*,struct nfp_net*,unsigned int) ;

__attribute__((used)) static inline int nfp_app_vnic_alloc(struct nfp_app *app, struct nfp_net *nn,
         unsigned int id)
{
 return app->type->vnic_alloc(app, nn, id);
}
