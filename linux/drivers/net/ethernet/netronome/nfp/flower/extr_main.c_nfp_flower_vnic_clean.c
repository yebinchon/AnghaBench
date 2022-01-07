
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net {int dummy; } ;
struct nfp_flower_priv {int * nn; } ;
struct nfp_app {TYPE_1__* pf; struct nfp_flower_priv* priv; } ;
struct TYPE_2__ {scalar_t__ num_vfs; } ;


 int NFP_REPR_TYPE_PF ;
 int NFP_REPR_TYPE_PHYS_PORT ;
 int NFP_REPR_TYPE_VF ;
 int nfp_reprs_clean_and_free_by_type (struct nfp_app*,int ) ;

__attribute__((used)) static void nfp_flower_vnic_clean(struct nfp_app *app, struct nfp_net *nn)
{
 struct nfp_flower_priv *priv = app->priv;

 if (app->pf->num_vfs)
  nfp_reprs_clean_and_free_by_type(app, NFP_REPR_TYPE_VF);
 nfp_reprs_clean_and_free_by_type(app, NFP_REPR_TYPE_PF);
 nfp_reprs_clean_and_free_by_type(app, NFP_REPR_TYPE_PHYS_PORT);

 priv->nn = ((void*)0);
}
