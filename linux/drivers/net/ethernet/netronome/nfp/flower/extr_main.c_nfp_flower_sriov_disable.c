
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int nn; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int NFP_REPR_TYPE_VF ;
 int nfp_reprs_clean_and_free_by_type (struct nfp_app*,int ) ;

__attribute__((used)) static void nfp_flower_sriov_disable(struct nfp_app *app)
{
 struct nfp_flower_priv *priv = app->priv;

 if (!priv->nn)
  return;

 nfp_reprs_clean_and_free_by_type(app, NFP_REPR_TYPE_VF);
}
