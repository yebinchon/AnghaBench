
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {TYPE_1__* vdev; int list; int prio; } ;
struct TYPE_2__ {int fh_lock; int fh_list; int prio; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_prio_open (int ,int *) ;

void v4l2_fh_add(struct v4l2_fh *fh)
{
 unsigned long flags;

 v4l2_prio_open(fh->vdev->prio, &fh->prio);
 spin_lock_irqsave(&fh->vdev->fh_lock, flags);
 list_add(&fh->list, &fh->vdev->fh_list);
 spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);
}
