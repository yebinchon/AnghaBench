
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {int prio; TYPE_1__* vdev; int list; } ;
struct TYPE_2__ {int prio; int fh_lock; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_prio_close (int ,int ) ;

void v4l2_fh_del(struct v4l2_fh *fh)
{
 unsigned long flags;

 spin_lock_irqsave(&fh->vdev->fh_lock, flags);
 list_del_init(&fh->list);
 spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);
 v4l2_prio_close(fh->vdev->prio, fh->prio);
}
