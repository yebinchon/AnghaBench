
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smt_entry {scalar_t__ refcnt; scalar_t__ state; int src_mac; } ;
struct smt_data {size_t smt_size; struct smt_entry* smtab; } ;


 int ETH_ALEN ;
 scalar_t__ SMT_STATE_SWITCHING ;
 scalar_t__ SMT_STATE_UNUSED ;
 scalar_t__ memcmp (int ,int *,int ) ;

__attribute__((used)) static struct smt_entry *find_or_alloc_smte(struct smt_data *s, u8 *smac)
{
 struct smt_entry *first_free = ((void*)0);
 struct smt_entry *e, *end;

 for (e = &s->smtab[0], end = &s->smtab[s->smt_size]; e != end; ++e) {
  if (e->refcnt == 0) {
   if (!first_free)
    first_free = e;
  } else {
   if (e->state == SMT_STATE_SWITCHING) {



    if (memcmp(e->src_mac, smac, ETH_ALEN) == 0)
     goto found_reuse;
   }
  }
 }

 if (first_free) {
  e = first_free;
  goto found;
 }
 return ((void*)0);

found:
 e->state = SMT_STATE_UNUSED;

found_reuse:
 return e;
}
