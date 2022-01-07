
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_rxon_context {size_t bcast_sta_id; } ;
struct iwl_priv {int sta_lock; TYPE_1__* stations; } ;
struct iwl_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct iwl_link_quality_cmd* lq; } ;


 int ENOMEM ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 struct iwl_link_quality_cmd* iwl_sta_alloc_lq (struct iwl_priv*,struct iwl_rxon_context*,size_t) ;
 int kfree (struct iwl_link_quality_cmd*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_update_bcast_station(struct iwl_priv *priv,
        struct iwl_rxon_context *ctx)
{
 struct iwl_link_quality_cmd *link_cmd;
 u8 sta_id = ctx->bcast_sta_id;

 link_cmd = iwl_sta_alloc_lq(priv, ctx, sta_id);
 if (!link_cmd) {
  IWL_ERR(priv, "Unable to initialize rate scaling for bcast station.\n");
  return -ENOMEM;
 }

 spin_lock_bh(&priv->sta_lock);
 if (priv->stations[sta_id].lq)
  kfree(priv->stations[sta_id].lq);
 else
  IWL_DEBUG_INFO(priv, "Bcast station rate scaling has not been initialized yet.\n");
 priv->stations[sta_id].lq = link_cmd;
 spin_unlock_bh(&priv->sta_lock);

 return 0;
}
