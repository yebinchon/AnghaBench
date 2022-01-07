
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int flow_entries_max; struct stmmac_flow_entry* flow_entries; } ;
struct stmmac_flow_entry {scalar_t__ cookie; int in_use; } ;
struct flow_cls_offload {scalar_t__ cookie; } ;



__attribute__((used)) static struct stmmac_flow_entry *tc_find_flow(struct stmmac_priv *priv,
           struct flow_cls_offload *cls,
           bool get_free)
{
 int i;

 for (i = 0; i < priv->flow_entries_max; i++) {
  struct stmmac_flow_entry *entry = &priv->flow_entries[i];

  if (entry->cookie == cls->cookie)
   return entry;
  if (get_free && (entry->in_use == 0))
   return entry;
 }

 return ((void*)0);
}
