
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_dl_body {TYPE_1__* pool; int free; scalar_t__ num_entries; int refcnt; } ;
struct TYPE_2__ {int lock; int free; } ;


 int list_add_tail (int *,int *) ;
 int refcount_dec_and_test (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void vsp1_dl_body_put(struct vsp1_dl_body *dlb)
{
 unsigned long flags;

 if (!dlb)
  return;

 if (!refcount_dec_and_test(&dlb->refcnt))
  return;

 dlb->num_entries = 0;

 spin_lock_irqsave(&dlb->pool->lock, flags);
 list_add_tail(&dlb->free, &dlb->pool->free);
 spin_unlock_irqrestore(&dlb->pool->lock, flags);
}
