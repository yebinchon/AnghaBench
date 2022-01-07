
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct v4l2_fh {TYPE_1__* vdev; } ;
struct v4l2_event {int dummy; } ;
struct TYPE_2__ {int fh_lock; } ;


 int __v4l2_event_queue_fh (struct v4l2_fh*,struct v4l2_event const*,int ) ;
 int ktime_get_ns () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void v4l2_event_queue_fh(struct v4l2_fh *fh, const struct v4l2_event *ev)
{
 unsigned long flags;
 u64 ts = ktime_get_ns();

 spin_lock_irqsave(&fh->vdev->fh_lock, flags);
 __v4l2_event_queue_fh(fh, ev, ts);
 spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);
}
