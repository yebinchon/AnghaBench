
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_entry {scalar_t__ state; struct l2t_entry* next; struct l2t_entry* first; int ifindex; int addr; int refcnt; } ;
struct l2t_data {size_t nentries; struct l2t_entry* l2tab; int nfree; struct l2t_entry* rover; } ;


 scalar_t__ L2T_STATE_UNUSED ;
 int arp_hash (int ,int ,struct l2t_data*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static struct l2t_entry *alloc_l2e(struct l2t_data *d)
{
 struct l2t_entry *end, *e, **p;

 if (!atomic_read(&d->nfree))
  return ((void*)0);


 for (e = d->rover, end = &d->l2tab[d->nentries]; e != end; ++e)
  if (atomic_read(&e->refcnt) == 0)
   goto found;

 for (e = &d->l2tab[1]; atomic_read(&e->refcnt); ++e) ;
found:
 d->rover = e + 1;
 atomic_dec(&d->nfree);





 if (e->state != L2T_STATE_UNUSED) {
  int hash = arp_hash(e->addr, e->ifindex, d);

  for (p = &d->l2tab[hash].first; *p; p = &(*p)->next)
   if (*p == e) {
    *p = e->next;
    break;
   }
  e->state = L2T_STATE_UNUSED;
 }
 return e;
}
