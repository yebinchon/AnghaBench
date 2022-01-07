
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3c_tid_entry {int dummy; } ;
union listen_entry {struct t3c_tid_entry t3c_tid; scalar_t__ next; } ;
struct tid_info {unsigned int stid_base; unsigned int nstids; size_t natids; int * atid_tab; scalar_t__ tid_tab; } ;


 union listen_entry* stid2entry (struct tid_info const*,unsigned int) ;

__attribute__((used)) static inline struct t3c_tid_entry *lookup_stid(const struct tid_info *t,
      unsigned int tid)
{
 union listen_entry *e;

 if (tid < t->stid_base || tid >= t->stid_base + t->nstids)
  return ((void*)0);

 e = stid2entry(t, tid);
 if ((void *)e->next >= (void *)t->tid_tab &&
     (void *)e->next < (void *)&t->atid_tab[t->natids])
  return ((void*)0);

 return &e->t3c_tid;
}
