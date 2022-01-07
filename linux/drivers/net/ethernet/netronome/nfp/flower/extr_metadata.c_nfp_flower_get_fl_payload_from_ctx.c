
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_flower_priv {int stats_ctx_table; } ;
struct nfp_fl_stats_ctx_to_flow {struct nfp_fl_payload* flow; } ;
struct nfp_fl_payload {int dummy; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 struct nfp_fl_stats_ctx_to_flow* rhashtable_lookup_fast (int *,int *,int ) ;
 int stats_ctx_table_params ;

struct nfp_fl_payload *
nfp_flower_get_fl_payload_from_ctx(struct nfp_app *app, u32 ctx_id)
{
 struct nfp_fl_stats_ctx_to_flow *ctx_entry;
 struct nfp_flower_priv *priv = app->priv;

 ctx_entry = rhashtable_lookup_fast(&priv->stats_ctx_table, &ctx_id,
        stats_ctx_table_params);
 if (!ctx_entry)
  return ((void*)0);

 return ctx_entry->flow;
}
