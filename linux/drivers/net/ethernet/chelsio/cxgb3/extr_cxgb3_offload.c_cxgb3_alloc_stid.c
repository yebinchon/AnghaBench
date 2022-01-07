
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct cxgb3_client* client; void* ctx; } ;
union listen_entry {TYPE_1__ t3c_tid; union listen_entry* next; } ;
struct tid_info {int stid_base; int stid_lock; int stids_in_use; union listen_entry* sfree; union listen_entry* stid_tab; } ;
struct t3cdev {int dummy; } ;
struct cxgb3_client {int dummy; } ;
struct TYPE_4__ {struct tid_info tid_maps; } ;


 TYPE_2__* T3C_DATA (struct t3cdev*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cxgb3_alloc_stid(struct t3cdev *tdev, struct cxgb3_client *client,
       void *ctx)
{
 int stid = -1;
 struct tid_info *t = &(T3C_DATA(tdev))->tid_maps;

 spin_lock_bh(&t->stid_lock);
 if (t->sfree) {
  union listen_entry *p = t->sfree;

  stid = (p - t->stid_tab) + t->stid_base;
  t->sfree = p->next;
  p->t3c_tid.ctx = ctx;
  p->t3c_tid.client = client;
  t->stids_in_use++;
 }
 spin_unlock_bh(&t->stid_lock);
 return stid;
}
