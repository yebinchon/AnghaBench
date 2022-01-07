
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aopen_entry {union aopen_entry* next; } ;
struct tid_info {unsigned int atid_base; int atid_lock; int atids_in_use; union aopen_entry* afree; union aopen_entry* atid_tab; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cxgb4_free_atid(struct tid_info *t, unsigned int atid)
{
 union aopen_entry *p = &t->atid_tab[atid - t->atid_base];

 spin_lock_bh(&t->atid_lock);
 p->next = t->afree;
 t->afree = p;
 t->atids_in_use--;
 spin_unlock_bh(&t->atid_lock);
}
