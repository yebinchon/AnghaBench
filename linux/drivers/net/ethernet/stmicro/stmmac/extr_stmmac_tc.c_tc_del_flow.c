
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int hw; } ;
struct stmmac_flow_entry {int in_use; int is_l4; scalar_t__ cookie; int idx; } ;
struct flow_cls_offload {int dummy; } ;


 int ENOENT ;
 int stmmac_config_l3_filter (struct stmmac_priv*,int ,int ,int,int,int,int,int ) ;
 int stmmac_config_l4_filter (struct stmmac_priv*,int ,int ,int,int,int,int,int ) ;
 struct stmmac_flow_entry* tc_find_flow (struct stmmac_priv*,struct flow_cls_offload*,int) ;

__attribute__((used)) static int tc_del_flow(struct stmmac_priv *priv,
         struct flow_cls_offload *cls)
{
 struct stmmac_flow_entry *entry = tc_find_flow(priv, cls, 0);
 int ret;

 if (!entry || !entry->in_use)
  return -ENOENT;

 if (entry->is_l4) {
  ret = stmmac_config_l4_filter(priv, priv->hw, entry->idx, 0,
           0, 0, 0, 0);
 } else {
  ret = stmmac_config_l3_filter(priv, priv->hw, entry->idx, 0,
           0, 0, 0, 0);
 }

 entry->in_use = 0;
 entry->cookie = 0;
 entry->is_l4 = 0;
 return ret;
}
