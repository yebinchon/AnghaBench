
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aopen_entry {void* data; union aopen_entry* next; } ;
struct tid_info {int atid_base; int atid_lock; int atids_in_use; union aopen_entry* afree; union aopen_entry* atid_tab; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cxgb4_alloc_atid(struct tid_info *t, void *data)
{
 int atid = -1;

 spin_lock_bh(&t->atid_lock);
 if (t->afree) {
  union aopen_entry *p = t->afree;

  atid = (p - t->atid_tab) + t->atid_base;
  t->afree = p->next;
  p->data = data;
  t->atids_in_use++;
 }
 spin_unlock_bh(&t->atid_lock);
 return atid;
}
