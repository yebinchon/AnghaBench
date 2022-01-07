
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ handle; } ;
struct tc_cls_u32_offload {TYPE_1__ knode; } ;
struct stmmac_tc_entry {int in_use; scalar_t__ handle; int val; int is_frag; } ;
struct stmmac_priv {int tc_entries_max; struct stmmac_tc_entry* tc_entries; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static struct stmmac_tc_entry *tc_find_entry(struct stmmac_priv *priv,
          struct tc_cls_u32_offload *cls,
          bool free)
{
 struct stmmac_tc_entry *entry, *first = ((void*)0), *dup = ((void*)0);
 u32 loc = cls->knode.handle;
 int i;

 for (i = 0; i < priv->tc_entries_max; i++) {
  entry = &priv->tc_entries[i];
  if (!entry->in_use && !first && free)
   first = entry;
  if ((entry->handle == loc) && !free && !entry->is_frag)
   dup = entry;
 }

 if (dup)
  return dup;
 if (first) {
  first->handle = loc;
  first->in_use = 1;


  memset(&first->val, 0, sizeof(first->val));
 }

 return first;
}
