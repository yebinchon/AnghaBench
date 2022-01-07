
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stmmac_tc_entry {scalar_t__ prio; scalar_t__ is_frag; scalar_t__ is_last; scalar_t__ in_hw; int in_use; } ;



__attribute__((used)) static struct stmmac_tc_entry *
dwxgmac3_rxp_get_next_entry(struct stmmac_tc_entry *entries,
       unsigned int count, u32 curr_prio)
{
 struct stmmac_tc_entry *entry;
 u32 min_prio = ~0x0;
 int i, min_prio_idx;
 bool found = 0;

 for (i = count - 1; i >= 0; i--) {
  entry = &entries[i];


  if (!entry->in_use)
   continue;

  if (entry->in_hw)
   continue;

  if (entry->is_last)
   continue;

  if (entry->is_frag)
   continue;

  if (entry->prio < curr_prio)
   continue;

  if (entry->prio < min_prio) {
   min_prio = entry->prio;
   min_prio_idx = i;
   found = 1;
  }
 }

 if (found)
  return &entries[min_prio_idx];
 return ((void*)0);
}
