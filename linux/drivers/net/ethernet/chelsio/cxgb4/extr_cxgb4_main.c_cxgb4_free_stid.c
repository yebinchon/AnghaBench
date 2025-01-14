
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {unsigned int sftid_base; unsigned int nstids; int v6_stids_in_use; int stid_lock; int sftids_in_use; scalar_t__ stids_in_use; TYPE_1__* stid_tab; int stid_bmap; scalar_t__ stid_base; scalar_t__ nsftids; } ;
struct TYPE_2__ {int * data; } ;


 int PF_INET ;
 int PF_INET6 ;
 int __clear_bit (unsigned int,int ) ;
 int bitmap_release_region (int ,unsigned int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cxgb4_free_stid(struct tid_info *t, unsigned int stid, int family)
{

 if (t->nsftids && (stid >= t->sftid_base)) {
  stid -= t->sftid_base;
  stid += t->nstids;
 } else {
  stid -= t->stid_base;
 }

 spin_lock_bh(&t->stid_lock);
 if (family == PF_INET)
  __clear_bit(stid, t->stid_bmap);
 else
  bitmap_release_region(t->stid_bmap, stid, 1);
 t->stid_tab[stid].data = ((void*)0);
 if (stid < t->nstids) {
  if (family == PF_INET6) {
   t->stids_in_use -= 2;
   t->v6_stids_in_use -= 2;
  } else {
   t->stids_in_use--;
  }
 } else {
  t->sftids_in_use--;
 }

 spin_unlock_bh(&t->stid_lock);
}
