
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cls_u32_offload {int dummy; } ;
struct stmmac_tc_entry {int in_use; int is_frag; struct stmmac_tc_entry* frag_ptr; } ;
struct stmmac_priv {int dummy; } ;


 struct stmmac_tc_entry* tc_find_entry (struct stmmac_priv*,struct tc_cls_u32_offload*,int) ;

__attribute__((used)) static void tc_unfill_entry(struct stmmac_priv *priv,
       struct tc_cls_u32_offload *cls)
{
 struct stmmac_tc_entry *entry;

 entry = tc_find_entry(priv, cls, 0);
 if (!entry)
  return;

 entry->in_use = 0;
 if (entry->frag_ptr) {
  entry = entry->frag_ptr;
  entry->is_frag = 0;
  entry->in_use = 0;
 }
}
