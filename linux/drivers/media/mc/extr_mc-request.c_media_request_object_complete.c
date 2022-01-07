
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_request_object {int completed; struct media_request* req; } ;
struct media_request {scalar_t__ state; int lock; int poll_wait; int num_incomplete_objects; } ;


 scalar_t__ MEDIA_REQUEST_STATE_COMPLETE ;
 scalar_t__ MEDIA_REQUEST_STATE_QUEUED ;
 scalar_t__ WARN_ON (int) ;
 int media_request_put (struct media_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible_all (int *) ;

void media_request_object_complete(struct media_request_object *obj)
{
 struct media_request *req = obj->req;
 unsigned long flags;
 bool completed = 0;

 spin_lock_irqsave(&req->lock, flags);
 if (obj->completed)
  goto unlock;
 obj->completed = 1;
 if (WARN_ON(!req->num_incomplete_objects) ||
     WARN_ON(req->state != MEDIA_REQUEST_STATE_QUEUED))
  goto unlock;

 if (!--req->num_incomplete_objects) {
  req->state = MEDIA_REQUEST_STATE_COMPLETE;
  wake_up_interruptible_all(&req->poll_wait);
  completed = 1;
 }
unlock:
 spin_unlock_irqrestore(&req->lock, flags);
 if (completed)
  media_request_put(req);
}
