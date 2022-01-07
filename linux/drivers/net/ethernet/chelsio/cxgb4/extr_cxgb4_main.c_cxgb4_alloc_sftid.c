
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {int nstids; int nsftids; int stid_lock; int sftids_in_use; scalar_t__ sftid_base; TYPE_1__* stid_tab; int stid_bmap; } ;
struct TYPE_2__ {void* data; } ;


 int PF_INET ;
 int __set_bit (int,int ) ;
 int find_next_zero_bit (int ,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cxgb4_alloc_sftid(struct tid_info *t, int family, void *data)
{
 int stid;

 spin_lock_bh(&t->stid_lock);
 if (family == PF_INET) {
  stid = find_next_zero_bit(t->stid_bmap,
    t->nstids + t->nsftids, t->nstids);
  if (stid < (t->nstids + t->nsftids))
   __set_bit(stid, t->stid_bmap);
  else
   stid = -1;
 } else {
  stid = -1;
 }
 if (stid >= 0) {
  t->stid_tab[stid].data = data;
  stid -= t->nstids;
  stid += t->sftid_base;
  t->sftids_in_use++;
 }
 spin_unlock_bh(&t->stid_lock);
 return stid;
}
