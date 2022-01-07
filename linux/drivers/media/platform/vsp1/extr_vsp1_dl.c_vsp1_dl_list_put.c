
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_dl_list {TYPE_1__* dlm; } ;
struct TYPE_2__ {int lock; } ;


 int __vsp1_dl_list_put (struct vsp1_dl_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void vsp1_dl_list_put(struct vsp1_dl_list *dl)
{
 unsigned long flags;

 if (!dl)
  return;

 spin_lock_irqsave(&dl->dlm->lock, flags);
 __vsp1_dl_list_put(dl);
 spin_unlock_irqrestore(&dl->dlm->lock, flags);
}
