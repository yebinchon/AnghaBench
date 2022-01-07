
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int use_rts_for_aggregation; } ;
struct iwl_priv {TYPE_4__* lib; TYPE_3__* cfg; TYPE_1__ hw_params; } ;
struct TYPE_8__ {int (* set_hw_params ) (struct iwl_priv*) ;} ;
struct TYPE_7__ {TYPE_2__* ht_params; } ;
struct TYPE_6__ {int use_rts_for_aggregation; } ;


 int stub1 (struct iwl_priv*) ;

__attribute__((used)) static void iwl_set_hw_params(struct iwl_priv *priv)
{
 if (priv->cfg->ht_params)
  priv->hw_params.use_rts_for_aggregation =
   priv->cfg->ht_params->use_rts_for_aggregation;


 priv->lib->set_hw_params(priv);
}
