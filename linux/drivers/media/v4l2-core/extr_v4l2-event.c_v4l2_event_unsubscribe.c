
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subscribed_event {TYPE_2__* ops; } ;
struct v4l2_fh {int subscribe_lock; TYPE_1__* vdev; } ;
struct v4l2_event_subscription {scalar_t__ type; int id; } ;
struct TYPE_4__ {int (* del ) (struct v4l2_subscribed_event*) ;} ;
struct TYPE_3__ {int fh_lock; } ;


 scalar_t__ V4L2_EVENT_ALL ;
 int __v4l2_event_unsubscribe (struct v4l2_subscribed_event*) ;
 int kvfree (struct v4l2_subscribed_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct v4l2_subscribed_event*) ;
 struct v4l2_subscribed_event* v4l2_event_subscribed (struct v4l2_fh*,scalar_t__,int ) ;
 int v4l2_event_unsubscribe_all (struct v4l2_fh*) ;

int v4l2_event_unsubscribe(struct v4l2_fh *fh,
      const struct v4l2_event_subscription *sub)
{
 struct v4l2_subscribed_event *sev;
 unsigned long flags;

 if (sub->type == V4L2_EVENT_ALL) {
  v4l2_event_unsubscribe_all(fh);
  return 0;
 }

 mutex_lock(&fh->subscribe_lock);

 spin_lock_irqsave(&fh->vdev->fh_lock, flags);

 sev = v4l2_event_subscribed(fh, sub->type, sub->id);
 if (sev != ((void*)0))
  __v4l2_event_unsubscribe(sev);

 spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);

 if (sev && sev->ops && sev->ops->del)
  sev->ops->del(sev);

 mutex_unlock(&fh->subscribe_lock);

 kvfree(sev);

 return 0;
}
