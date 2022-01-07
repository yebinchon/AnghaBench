
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int flower_ext_feats; int nfp_lag; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int NFP_FL_FEATS_LAG ;
 int nfp_flower_lag_reset (int *) ;
 int nfp_tunnel_config_start (struct nfp_app*) ;

__attribute__((used)) static int nfp_flower_start(struct nfp_app *app)
{
 struct nfp_flower_priv *app_priv = app->priv;
 int err;

 if (app_priv->flower_ext_feats & NFP_FL_FEATS_LAG) {
  err = nfp_flower_lag_reset(&app_priv->nfp_lag);
  if (err)
   return err;
 }

 return nfp_tunnel_config_start(app);
}
