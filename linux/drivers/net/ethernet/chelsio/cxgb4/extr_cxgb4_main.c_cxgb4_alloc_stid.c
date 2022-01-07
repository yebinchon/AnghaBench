
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {int nstids; int v6_stids_in_use; int stid_lock; scalar_t__ stids_in_use; scalar_t__ stid_base; TYPE_1__* stid_tab; int stid_bmap; } ;
struct TYPE_2__ {void* data; } ;


 int PF_INET ;
 int PF_INET6 ;
 int __set_bit (int,int ) ;
 int bitmap_find_free_region (int ,int,int) ;
 int find_first_zero_bit (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cxgb4_alloc_stid(struct tid_info *t, int family, void *data)
{
 int stid;

 spin_lock_bh(&t->stid_lock);
 if (family == PF_INET) {
  stid = find_first_zero_bit(t->stid_bmap, t->nstids);
  if (stid < t->nstids)
   __set_bit(stid, t->stid_bmap);
  else
   stid = -1;
 } else {
  stid = bitmap_find_free_region(t->stid_bmap, t->nstids, 1);
  if (stid < 0)
   stid = -1;
 }
 if (stid >= 0) {
  t->stid_tab[stid].data = data;
  stid += t->stid_base;




  if (family == PF_INET6) {
   t->stids_in_use += 2;
   t->v6_stids_in_use += 2;
  } else {
   t->stids_in_use++;
  }
 }
 spin_unlock_bh(&t->stid_lock);
 return stid;
}
