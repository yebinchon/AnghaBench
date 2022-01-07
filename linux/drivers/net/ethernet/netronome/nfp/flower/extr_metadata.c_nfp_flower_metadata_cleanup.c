
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buf; } ;
struct TYPE_7__ {TYPE_2__ free_list; } ;
struct TYPE_8__ {int buf; } ;
struct TYPE_5__ {int last_used; TYPE_4__ mask_id_free_list; } ;
struct nfp_flower_priv {TYPE_3__ stats_ids; TYPE_1__ mask_ids; int stats; int stats_ctx_table; int flow_table; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int kfree (int ) ;
 int kvfree (int ) ;
 int nfp_check_rhashtable_empty ;
 int rhashtable_free_and_destroy (int *,int ,int *) ;
 int vfree (int ) ;

void nfp_flower_metadata_cleanup(struct nfp_app *app)
{
 struct nfp_flower_priv *priv = app->priv;

 if (!priv)
  return;

 rhashtable_free_and_destroy(&priv->flow_table,
        nfp_check_rhashtable_empty, ((void*)0));
 rhashtable_free_and_destroy(&priv->stats_ctx_table,
        nfp_check_rhashtable_empty, ((void*)0));
 kvfree(priv->stats);
 kfree(priv->mask_ids.mask_id_free_list.buf);
 kfree(priv->mask_ids.last_used);
 vfree(priv->stats_ids.free_list.buf);
}
