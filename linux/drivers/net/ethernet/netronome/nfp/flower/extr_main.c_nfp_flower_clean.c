
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int flower_ext_feats; int nfp_lag; int cmsg_work; int cmsg_skbs_low; int cmsg_skbs_high; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int NFP_FL_FEATS_FLOW_MERGE ;
 int NFP_FL_FEATS_LAG ;
 int NFP_FL_FEATS_VF_RLIM ;
 int flush_work (int *) ;
 int nfp_flower_internal_port_cleanup (struct nfp_flower_priv*) ;
 int nfp_flower_lag_cleanup (int *) ;
 int nfp_flower_metadata_cleanup (struct nfp_app*) ;
 int nfp_flower_qos_cleanup (struct nfp_app*) ;
 int skb_queue_purge (int *) ;
 int vfree (struct nfp_flower_priv*) ;

__attribute__((used)) static void nfp_flower_clean(struct nfp_app *app)
{
 struct nfp_flower_priv *app_priv = app->priv;

 skb_queue_purge(&app_priv->cmsg_skbs_high);
 skb_queue_purge(&app_priv->cmsg_skbs_low);
 flush_work(&app_priv->cmsg_work);

 if (app_priv->flower_ext_feats & NFP_FL_FEATS_VF_RLIM)
  nfp_flower_qos_cleanup(app);

 if (app_priv->flower_ext_feats & NFP_FL_FEATS_LAG)
  nfp_flower_lag_cleanup(&app_priv->nfp_lag);

 if (app_priv->flower_ext_feats & NFP_FL_FEATS_FLOW_MERGE)
  nfp_flower_internal_port_cleanup(app_priv);

 nfp_flower_metadata_cleanup(app);
 vfree(app->priv);
 app->priv = ((void*)0);
}
