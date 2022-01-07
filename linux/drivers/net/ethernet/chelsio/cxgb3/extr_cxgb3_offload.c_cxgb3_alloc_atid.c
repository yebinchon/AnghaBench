
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct cxgb3_client* client; void* ctx; } ;
union active_open_entry {TYPE_1__ t3c_tid; union active_open_entry* next; } ;
struct tid_info {scalar_t__ atids_in_use; scalar_t__ ntids; int atid_base; int atid_lock; union active_open_entry* afree; union active_open_entry* atid_tab; int tids_in_use; } ;
struct t3cdev {int dummy; } ;
struct cxgb3_client {int dummy; } ;
struct TYPE_4__ {struct tid_info tid_maps; } ;


 scalar_t__ MC5_MIN_TIDS ;
 TYPE_2__* T3C_DATA (struct t3cdev*) ;
 scalar_t__ atomic_read (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cxgb3_alloc_atid(struct t3cdev *tdev, struct cxgb3_client *client,
       void *ctx)
{
 int atid = -1;
 struct tid_info *t = &(T3C_DATA(tdev))->tid_maps;

 spin_lock_bh(&t->atid_lock);
 if (t->afree &&
     t->atids_in_use + atomic_read(&t->tids_in_use) + MC5_MIN_TIDS <=
     t->ntids) {
  union active_open_entry *p = t->afree;

  atid = (p - t->atid_tab) + t->atid_base;
  t->afree = p->next;
  p->t3c_tid.ctx = ctx;
  p->t3c_tid.client = client;
  t->atids_in_use++;
 }
 spin_unlock_bh(&t->atid_lock);
 return atid;
}
