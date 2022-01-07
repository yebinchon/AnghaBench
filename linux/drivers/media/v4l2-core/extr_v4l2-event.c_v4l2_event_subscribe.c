
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subscribed_event_ops {int (* add ) (struct v4l2_subscribed_event*,unsigned int) ;} ;
struct v4l2_subscribed_event {scalar_t__ type; unsigned int elems; struct v4l2_subscribed_event_ops const* ops; int list; struct v4l2_fh* fh; int flags; int id; TYPE_1__* events; } ;
struct v4l2_fh {int subscribe_lock; TYPE_2__* vdev; int subscribed; } ;
struct v4l2_event_subscription {scalar_t__ type; int id; int flags; } ;
struct TYPE_4__ {int fh_lock; } ;
struct TYPE_3__ {struct v4l2_subscribed_event* sev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ V4L2_EVENT_ALL ;
 int __v4l2_event_unsubscribe (struct v4l2_subscribed_event*) ;
 int events ;
 int kvfree (struct v4l2_subscribed_event*) ;
 struct v4l2_subscribed_event* kvzalloc (int ,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int struct_size (struct v4l2_subscribed_event*,int ,unsigned int) ;
 int stub1 (struct v4l2_subscribed_event*,unsigned int) ;
 struct v4l2_subscribed_event* v4l2_event_subscribed (struct v4l2_fh*,scalar_t__,int ) ;

int v4l2_event_subscribe(struct v4l2_fh *fh,
    const struct v4l2_event_subscription *sub, unsigned elems,
    const struct v4l2_subscribed_event_ops *ops)
{
 struct v4l2_subscribed_event *sev, *found_ev;
 unsigned long flags;
 unsigned i;
 int ret = 0;

 if (sub->type == V4L2_EVENT_ALL)
  return -EINVAL;

 if (elems < 1)
  elems = 1;

 sev = kvzalloc(struct_size(sev, events, elems), GFP_KERNEL);
 if (!sev)
  return -ENOMEM;
 for (i = 0; i < elems; i++)
  sev->events[i].sev = sev;
 sev->type = sub->type;
 sev->id = sub->id;
 sev->flags = sub->flags;
 sev->fh = fh;
 sev->ops = ops;
 sev->elems = elems;

 mutex_lock(&fh->subscribe_lock);

 spin_lock_irqsave(&fh->vdev->fh_lock, flags);
 found_ev = v4l2_event_subscribed(fh, sub->type, sub->id);
 if (!found_ev)
  list_add(&sev->list, &fh->subscribed);
 spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);

 if (found_ev) {

  kvfree(sev);
 } else if (sev->ops && sev->ops->add) {
  ret = sev->ops->add(sev, elems);
  if (ret) {
   spin_lock_irqsave(&fh->vdev->fh_lock, flags);
   __v4l2_event_unsubscribe(sev);
   spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);
   kvfree(sev);
  }
 }

 mutex_unlock(&fh->subscribe_lock);

 return ret;
}
