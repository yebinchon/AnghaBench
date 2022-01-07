
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {scalar_t__ navailable; TYPE_1__* vdev; int wait; } ;
struct v4l2_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ lock; } ;


 int ENOENT ;
 int __v4l2_event_dequeue (struct v4l2_fh*,struct v4l2_event*) ;
 int mutex_lock (scalar_t__) ;
 int mutex_unlock (scalar_t__) ;
 int wait_event_interruptible (int ,int) ;

int v4l2_event_dequeue(struct v4l2_fh *fh, struct v4l2_event *event,
         int nonblocking)
{
 int ret;

 if (nonblocking)
  return __v4l2_event_dequeue(fh, event);


 if (fh->vdev->lock)
  mutex_unlock(fh->vdev->lock);

 do {
  ret = wait_event_interruptible(fh->wait,
            fh->navailable != 0);
  if (ret < 0)
   break;

  ret = __v4l2_event_dequeue(fh, event);
 } while (ret == -ENOENT);

 if (fh->vdev->lock)
  mutex_lock(fh->vdev->lock);

 return ret;
}
