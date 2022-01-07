
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {TYPE_1__* vdev; int list; } ;
struct TYPE_2__ {int fh_lock; } ;


 int list_is_singular (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int v4l2_fh_is_singular(struct v4l2_fh *fh)
{
 unsigned long flags;
 int is_singular;

 if (fh == ((void*)0) || fh->vdev == ((void*)0))
  return 0;
 spin_lock_irqsave(&fh->vdev->fh_lock, flags);
 is_singular = list_is_singular(&fh->list);
 spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);
 return is_singular;
}
