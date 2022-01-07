
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_cls_u32_offload {int dummy; } ;
struct stmmac_priv {int tc_entries_max; int tc_entries; TYPE_1__* hw; } ;
struct TYPE_2__ {int pcsr; } ;


 int stmmac_rxp_config (struct stmmac_priv*,int ,int ,int ) ;
 int tc_unfill_entry (struct stmmac_priv*,struct tc_cls_u32_offload*) ;

__attribute__((used)) static int tc_delete_knode(struct stmmac_priv *priv,
      struct tc_cls_u32_offload *cls)
{
 int ret;


 tc_unfill_entry(priv, cls);

 ret = stmmac_rxp_config(priv, priv->hw->pcsr, priv->tc_entries,
   priv->tc_entries_max);
 if (ret)
  return ret;

 return 0;
}
